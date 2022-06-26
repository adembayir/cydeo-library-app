package com.cydeo.library.step_definitions;

import com.cydeo.library.pages.BasePage;
import com.cydeo.library.pages.LibraryLoginPage;
import com.cydeo.library.utilities.ConfigurationReader;
import com.cydeo.library.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.bouncycastle.jcajce.provider.drbg.DRBG;
import org.junit.Assert;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Login_StepDefinitions {
    LibraryLoginPage libraryLoginPage = new LibraryLoginPage();
    BasePage basePage = new BasePage();
    WebDriverWait wait = new WebDriverWait(Driver.getDriver(), 10);

    @Given("user is on the login page")
    public void user_is_on_the_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }
    @When("user enters librarian username")
    public void user_enters_librarian_username() {
        libraryLoginPage.emailInputBox.sendKeys("librarian5@library");
    }
    @When("user enters librarian password")
    public void user_enters_librarian_password() {
        libraryLoginPage.passwordInputBox.sendKeys("GUgEFTI7");
        libraryLoginPage.signInButton.click();
    }
    @Then("user should see the dashboard")
    public void user_should_see_the_dashboard() {
        wait.until(ExpectedConditions.visibilityOf(basePage.userInfo));
        Assert.assertTrue(basePage.userInfo.isDisplayed());
    }
    @When("user enters student username")
    public void user_enters_student_username() {
        libraryLoginPage.emailInputBox.sendKeys("student26@library");
    }
    @When("user enters student password")
    public void user_enters_student_password() {
        libraryLoginPage.passwordInputBox.sendKeys("6xhH92SU");
        libraryLoginPage.signInButton.click();
    }
}
