package br.ce.wcaquino.steps;

import java.io.IOException;
import java.sql.Driver;

import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class InserirContasSteps {
	
	private WebDriver driver;
	
	@Dado("^que estou acessando a aplicação$")
	public void queEstouAcessandoAAplicação() throws Throwable {
		driver = new ChromeDriver();
		driver.get("http://srbarriga.herokuapp.com/logout");
	}

	@Quando("^informo o usuairo \"([^\"]*)\"$")
	public void informoOUsuairo(String arg1) throws Throwable {
	    driver.findElement(By.id("email")).sendKeys(arg1);
	}

	@Quando("^a senha \"([^\"]*)\"$")
	public void aSenha(String arg1) throws Throwable {
		driver.findElement(By.id("senha")).sendKeys(arg1);
	}

	@Quando("^seleciono entrar$")
	public void selecionoEntrar() throws Throwable {
		driver.findElement(By.tagName("button")).click();
	}

	@Então("^visualizo a pagina inicial$")
	public void visualizoAPaginaInicial() throws Throwable {
		String texto = driver.findElement(By.xpath("//div[@class='alert alert-success']")).getText();
		Assert.assertEquals("Bem vindo, saba!", texto);
		
	}

	@Quando("^seleciono conta$")
	public void selecionoConta() throws Throwable {
	    driver.findElement(By.linkText("Contas")).click();
	}

	@Quando("^seleciono Adicionar$")
	public void selecionoAdicionar() throws Throwable {
		driver.findElement(By.linkText("Adicionar")).click();
	}

	@Quando("^informo a conta \"([^\"]*)\"$")
	public void informoAConta(String arg1) throws Throwable {
	    driver.findElement(By.id("nome")).sendKeys(arg1);
	}

	@Quando("^seleciono salvar$")
	public void selecionoSalvar() throws Throwable {
		driver.findElement(By.xpath("//button")).click();
	}

	@Então("^a conta e inserida com sucesso$")
	public void aContaEInseridaComSucesso() throws Throwable {
		String texto = driver.findElement(By.xpath("//div[@class='alert alert-success']")).getText();
		Assert.assertEquals("Conta adicionada com sucesso!", texto);
	}
	
	@Então("^sou notificado que o nome da conta e obrigatorio$")
	public void souNotificadoQueONomeDaContaEObrigatorio() throws Throwable {
		String texto = driver.findElement(By.xpath("//div[@class='alert alert-danger']")).getText();
		Assert.assertEquals("Informe o nome da conta", texto);
	}
	
	@Então("^sou notificado que ja existe uma conta com este nome$")
	public void souNotificadoQueJaExisteUmaContaComEsteNome() throws Throwable {
		String texto = driver.findElement(By.xpath("//div[@class='alert alert-danger']")).getText();
		Assert.assertEquals("Já existe uma conta com esse nome!", texto);
	}
	
	@Então("^recebo a \"([^\"]*)\"$")
	public void receboA(String arg1) throws Throwable {
		String texto = driver.findElement(By.xpath("//div[starts-with(@class, 'alert alert-')]")).getText();
		Assert.assertEquals(arg1, texto);
	}
	
	
	@After(order = 1, value = {"@Funcionais"})
	public void screenshot(Scenario cenario) {
		java.io.File file = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
		try {
			FileUtils.copyFile(file, new java.io.File("target/screenshots/"+cenario.getId()+".jpg"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@After(order = 0, value = {"@Funcionais"})
	public void fecharBrowser() {
		driver.quit();
	}

}
