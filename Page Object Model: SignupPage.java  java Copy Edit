package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SignupPage {
    WebDriver driver;

    @FindBy(id = "firstname")
    WebElement firstName;

    @FindBy(id = "lastname")
    WebElement lastName;

    @FindBy(id = "email_address")
    WebElement emailAddress;

    @FindBy(id = "password")
    WebElement password;

    @FindBy(id = "password-confirmation")
    WebElement confirmPassword;

    @FindBy(xpath = "//button[@title='Create an Account']")
    WebElement createAccountButton;

    public SignupPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void fillSignupForm(String fName, String lName, String email, String pwd, String confirmPwd) {
        firstName.sendKeys(fName);
        lastName.sendKeys(lName);
        emailAddress.sendKeys(email);
        password.sendKeys(pwd);
        confirmPassword.sendKeys(confirmPwd);
    }

    public void clickCreateAccount() {
        createAccountButton.click();
    }
}
