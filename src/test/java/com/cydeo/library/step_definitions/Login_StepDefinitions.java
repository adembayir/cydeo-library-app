package com.cydeo.library.step_definitions;

import com.cydeo.library.pages.BasePage;
import com.cydeo.library.pages.LibraryLoginPage;
import com.cydeo.library.utilities.ConfigurationReader;
import com.cydeo.library.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Login_StepDefinitions {
    LibraryLoginPage libraryLoginPage = new LibraryLoginPage();
    BasePage basePage = new BasePage();

    @Given("user is on the login page")
    public void user_is_on_the_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }
    @When("user enters librarian username {string}")
    public void user_enters_librarian_username(String username) {
        libraryLoginPage.emailInputBox.sendKeys(username);
    }
    @When("user enters librarian password {string}")
    public void user_enters_librarian_password(String password) {
        libraryLoginPage.passwordInputBox.sendKeys(password);
        libraryLoginPage.signInButton.click();
    }
    @Then("user should see the dashboard")
    public void user_should_see_the_dashboard() {
        Assert.assertTrue(basePage.libraryLink.isDisplayed());
    }
    @When("user enters student username {string}")
    public void user_enters_student_username(String username) {
        libraryLoginPage.emailInputBox.sendKeys(username);
    }
    @When("user enters student password {string}")
    public void user_enters_student_password(String password) {
        libraryLoginPage.passwordInputBox.sendKeys(password);
        libraryLoginPage.signInButton.click();
    }
}
