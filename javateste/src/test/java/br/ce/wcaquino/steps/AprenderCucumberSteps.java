package br.ce.wcaquino.steps;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.zip.DataFormatException;

import javax.swing.plaf.synth.SynthSeparatorUI;

import org.junit.Assert;

import br.ce.wcaquino.converters.DateConverter;
import cucumber.api.Transform;
import cucumber.api.java.ca.Cal;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class AprenderCucumberSteps {
	@Dado("^que criei o arquivo corretamente$")
	public void queCrieiOArquivoCorretamente() throws Throwable {

	}

	@Quando("^execulta-lo$")
	public void execultaLo() throws Throwable {

	}

	@Então("^a especificação deve finalizar com sucesso$")
	public void aEspecificaçãoDeveFinalizarComSucesso() throws Throwable {

	}
	
	private int contador = 0;
	
	@Dado("^que o valor do contador é (\\d+)$")
	public void queOValorDoContadorÉ(int arg1) throws Throwable {
		
		contador = arg1;
	    
	}

	@Quando("^eu incrementar em (\\d+)$")
	public void euIncrementarEm(int arg1) throws Throwable {
		
		contador = contador + arg1;
	    
	}

	@Então("^O valor do contador sera (\\d+)$")
	public void oValorDoContadorSera(int arg1) throws Throwable {
		Assert.assertEquals(arg1, contador);
	}
	
	Date entrega = new Date();
	
	@Dado("^que o prazo é dia (.*)$")
	public void queOPrazoÉDia(@Transform(DateConverter.class) Date data) throws Throwable {
	
		entrega = data;
	}

	@Quando("^a entrega atrasar (\\d+) (dia|dias|mes|meses)$")
	public void aEntregaAtrasarDias(int arg1, String tempo) throws Throwable {
		Calendar cal = Calendar.getInstance();
		cal.setTime(entrega);
		if (tempo.equals("dias")) {
			cal.add(Calendar.DAY_OF_MONTH, arg1);
		}
		if (tempo.equals("meses")) {
			cal.add(Calendar.MONTH, arg1);
		}
		entrega = cal.getTime();
	}

	@Então("^a entrega será efetuada em (.*)$")
	public void aEntregaSeráEfetuadaEm(@Transform(DateConverter.class) Date data) throws Throwable {
		
//		System.out.println(entrega);
		Assert.assertEquals(data, entrega);
	}
	
//  Desafio para reaproveitamento de codigo e aprender expressoes regulares.
	
	@Dado("^que o ticket( especial)? é (A.\\d{3})$")
	public void queOTicketÉAF(String tipo, String arg1) throws Throwable {
		
	}

	@Dado("^que o valor da passagem é R\\$ (.*)$")
	public void queOValorDaPassagemÉR$(Double numero) throws Throwable {
	    
	}

	@Dado("^que o nome do passageiro é \"(.{5,20})\"$")
	public void queONomeDoPassageiroÉ(String arg1) throws Throwable {
	    
	}

	@Dado("^que o telefone do passageiro é (9\\d{3}-\\d{4})$")
	public void queOTelefoneDoPassageiroÉ(String telefone) throws Throwable {

	}

	@Quando("^criar os steps$")
	public void criarOsSteps() throws Throwable {

	}

	@Então("^o teste vai funcionar$")
	public void oTesteVaiFuncionar() throws Throwable {

	}
	
}
