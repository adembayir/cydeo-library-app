package com.cydeo.library.step_definitions;

import com.cydeo.library.pages.BasePage;
import com.cydeo.library.pages.LibrarianDashboardPage;
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
    LibrarianDashboardPage librarianDashboardPage = new LibrarianDashboardPage();
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

    @When("user enters librarian username {string}")
    public void user_enters_librarian_username(String librarianUsername) {
        libraryLoginPage.emailInputBox.sendKeys(librarianUsername);
    }
    @When("user enters librarian password {string}")
    public void user_enters_librarian_password(String librarianPassword) {
        libraryLoginPage.passwordInputBox.sendKeys(librarianPassword);
        libraryLoginPage.signInButton.click();
    }

    @When("user enters student username {string}")
    public void user_enters_student_username(String studentUsername) {
        libraryLoginPage.emailInputBox.sendKeys(studentUsername);
    }
    @When("user enters student password {string}")
    public void user_enters_student_password(String studentPassword) {
        libraryLoginPage.passwordInputBox.sendKeys(studentPassword);
        libraryLoginPage.signInButton.click();
    }

    @When("user logs in using {string} and {string}")
    public void user_logs_in_using_and(String username, String password) {
        libraryLoginPage.emailInputBox.sendKeys(username);
        libraryLoginPage.passwordInputBox.sendKeys(password);
        libraryLoginPage.signInButton.click();
    }
    @Then("there should be {string} users")
    public void there_should_be_users(String userCount) {
        Assert.assertEquals(userCount, librarianDashboardPage.userCount.getText());
    }
}
