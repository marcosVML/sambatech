package br.vm.marcoslopes.steps;

import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Sleeper;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class Steps {
	
	private WebDriver driver;
		
	@Dado("^que eu acesso a aplicação$")
	public void queEuAcessoAAplicação() throws Throwable {
		driver = new ChromeDriver();
		driver.get("http://web1.qa.sambatech.com:10000/auth/login");
	}

	@Quando("^informo o usuario \"([^\"]*)\"$")
	public void informoOUsuario(String arg1) throws Throwable {
	    driver.findElement(By.id("inputEmail")).sendKeys(arg1);
	}

	@Quando("^a senha \"([^\"]*)\"$")
	public void aSenha(String arg1) throws Throwable {
		driver.findElement(By.id("inputPassword")).sendKeys(arg1);

	}

	@Quando("^seleciono entrar$")
	public void selecionoEntrar() throws Throwable {
		driver.findElement(By.id("login")).click();

	}

	@Então("^vejo o painel$")
	public void vejoOPainel() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 25);
		wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//span[@class='muted']")));
		String texto = driver.findElement(By.xpath("//span[@class='muted']")).getText();
		Assert.assertEquals("aa $$$ 123", texto);
		wait.until(ExpectedConditions.elementToBeClickable(By.id("navbar-user-avatar")));
		driver.findElement(By.id("navbar-user-avatar")).click();
		driver.findElement(By.id("logout")).click();
	}
	
	@Então("^vejo a mensagem \"([^\"]*)\"$")
	public void vejoAMensagem(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 25);
		wait.until(ExpectedConditions.elementToBeClickable(By.id("password_incorrect")));
		String texto = driver.findElement(By.id("password_incorrect")).getText();
		Assert.assertEquals(arg1, texto);
	}
	
	@Dado("^que acesso o menu conteudo$")
	public void queEuTenhaUmVideoCarregadoNaMinhaPlataforma() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 25);
		wait.until(ExpectedConditions.elementToBeClickable(By.id("mn-content")));
		driver.findElement(By.id("mn-content")).click();
	}
	
	@Dado("^possua um video carregado$")
	public void possuaUmVideoCarregado() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 25);
		wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//h3[@title='Teste Qualidade']")));
		String texto = driver.findElement(By.xpath("//h3[@title='Teste Qualidade']")).getText();
		Assert.assertEquals("Vídeo - Teste Qualidade", texto);

	}

	@Quando("^realizo o download do video clicando em Download Raw$")
	public void realizoODownloadDoVideoClicandoEmDownloadRaw() throws Throwable {
		driver.findElement(By.xpath("//a[@data-mediaid='8dce8954424cb3f99078ecf81f6fcd10']")).click();

	}

	@Então("^o sistema realiza o download do arquivo para a minha maquina$")
	public void oSistemaRealizaODownloadDoArquivoParaAMinhaMaquina() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 25);
		wait.until(ExpectedConditions.elementToBeClickable(By.id("mensagem")));
		String texto = driver.findElement(By.id("mensagem")).getText();
		Assert.assertEquals("Download realizado com sucesso", texto);
	}
	
	@After
	public void fecharBrowser() {
		driver.quit();
	}

}
