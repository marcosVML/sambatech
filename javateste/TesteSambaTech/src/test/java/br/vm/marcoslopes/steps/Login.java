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

public class Login {
	
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
	}

	@Dado("^que eu tenho o usuário \"([^\"]*)\" e \"([^\"]*)\"$")
	public void queEuTenhoOUsuárioE(String arg1, String arg2) throws Throwable {
		driver.findElement(By.id("inputEmail")).sendKeys(arg1);
		driver.findElement(By.id("inputPassword")).sendKeys(arg2);
	}

	@Então("^vejo a mensagem \"([^\"]*)\"$")
	public void vejoAMensagem(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 25);
		wait.until(ExpectedConditions.elementToBeClickable(By.id("password_incorrect")));
		String texto = driver.findElement(By.id("password_incorrect")).getText();
		Assert.assertEquals(arg1, texto);
		driver.findElement(By.id("navbar-user-avatar")).click();
		driver.findElement(By.id("logout")).click();
	}
	
	@After
	public void fecharBrowser() {
		driver.quit();
	}

}
