package com.cydeo.library.pages;

import com.cydeo.library.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class BasePage {
    public BasePage() {
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(xpath = "//a[@id='navbarDropdown']/span")
    public WebElement accountHolder;

    public void clickLink(String link) {
        Driver.getDriver().findElement(By.partialLinkText(link)).click();
    }
}
