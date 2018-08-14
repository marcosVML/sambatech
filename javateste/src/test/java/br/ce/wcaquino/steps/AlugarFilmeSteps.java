package br.ce.wcaquino.steps;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.junit.Assert;

import br.ce.wcaquino.entidades.Filme;
import br.ce.wcaquino.entidades.NotaAluguel;
import br.ce.wcaquino.entidades.TipoAluguel;
import br.ce.wcaquino.servico.AluguelService;
import br.ce.wcaquino.utils.DateUtils;
import cucumber.api.DataTable;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class AlugarFilmeSteps {
	
	private Filme filme;
	private AluguelService aluguel = new AluguelService();
	private NotaAluguel nota;
	private String erro;
	private TipoAluguel tipoAluguel = TipoAluguel.COMUM;
	
	@Dado("^um filme com stoque de (\\d+) unidades$")
	public void umFilmeComStoqueDeUnidades(int arg1) throws Throwable {
		filme = new Filme();
		filme.setEstoque(arg1);
	}

	@Dado("^que o preço de aluguel seja R\\$ (\\d+)$")
	public void queOPreçoDeAluguelSejaR$(int arg1) throws Throwable {
		filme.setAluguel(arg1); 

	}
	
	@Dado("^um filme$")
	public void umFilme(DataTable table) throws Throwable {
		Map<String, String> map = table.asMap(String.class, String.class);
		filme = new Filme();
		filme.setEstoque(Integer.parseInt(map.get("estoque")));
		filme.setAluguel(Integer.parseInt(map.get("preço"))); 
	}

	@Quando("^alugar$")
	public void alugar() throws Throwable {
		try {
			
			nota = aluguel.alugar(filme, tipoAluguel);
			
		} catch (RuntimeException e) {
			erro = e.getMessage();
		}
	}

	@Então("^o preço do aluguel sera R\\$ (\\d+)$")
	public void oPreçoDoAluguelSeraR$(int arg1) throws Throwable {
		Assert.assertEquals(arg1, nota.getPreco());

	}

	@Então("^o estoque do filme sera (\\d+) unidade$")
	public void oEstoqueDoFilmeSeraUnidade(int arg1) throws Throwable {
		Assert.assertEquals(arg1, filme.getEstoque());
	}
	
	
	@Então("^não sera possivel por falta de estoque$")
	public void nãoSeraPossivelPorFaltaDeEstoque() throws Throwable {
		Assert.assertEquals("Filme sem estoque", erro);
	}
	
	@Dado("^que o tipo do aluguel seja (.*)$")
	public void queOTipoDoAluguelSejaExtendido(String tipo) throws Throwable {
	    tipoAluguel = tipo.equals("semanal")? TipoAluguel.SEMANAL: tipo.equals("extendido")? TipoAluguel.EXTENDIDO: TipoAluguel.COMUM;
	}

	@Então("^a data de entrega sera em (\\d+) dias?$")
	public void aDataDeEntregaSeraEmDias(int arg1) throws Throwable {
		Date dataEsperada = DateUtils.obeterDataDiferecaDias(arg1);
	    Date dataReal = nota.getDataEntrega();
	    
	    DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
	    
	    Assert.assertEquals(format.format(dataEsperada), format.format(dataReal));
	}

	@Então("^a pontuação recebida sera (\\d+) pontos$")
	public void aPontuaçãoRecebidaSeraPontos(int arg1) throws Throwable {
	    Assert.assertEquals(arg1, nota.getPontuação());
	}

}
