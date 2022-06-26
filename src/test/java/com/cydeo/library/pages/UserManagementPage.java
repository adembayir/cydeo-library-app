package com.cydeo.library.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class UserManagementPage extends BasePage {
    @FindBy(tagName = "th")
    public List<WebElement> tableHeaders;
}
