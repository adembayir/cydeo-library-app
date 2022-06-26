package com.cydeo.library.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LibrarianDashboardPage extends BasePage {

    @FindBy(xpath = "//h2[@id='user_count']")
    public WebElement userCount;

}
