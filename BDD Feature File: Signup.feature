package steps;

import io.cucumber.java.en.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import pages.SignupPage;

public class SignupSteps {
    WebDriver driver;
    SignupPage signupPage;

    @Given("I am on the signup page")
    public void iAmOnTheSignupPage() {
        driver = new ChromeDriver();
        driver.get("https://magento.softwaretestingboard.com/customer/account/create/");
        signupPage = new SignupPage(driver);
    }

    @When("I fill in the form with valid details")
    public void iFillInTheFormWithValidDetails() {
        signupPage.fillSignupForm("Suvarna", "Rupesh", "Suvarna.Rupesh@example.com", "Password123!", "Password123!");
    }

    @When("I fill in the form with an existing email")
    public void iFillInTheFormWithAnExistingEmail() {
        signupPage.fillSignupForm("Suvarna", "Rupesh", "Suvarna.Rupesh@example.com", "Password123!", "Password123!");
    }

    @And("I click the {string} button")
    public void iClickTheButton(String button) {
        signupPage.clickCreateAccount();
    }

    @Then("I should be redirected to the dashboard")
    public void iShouldBeRedirectedToTheDashboard() {
        // Validate successful redirection
        driver.quit();
    }

    @Then("I should see an error message {string}")
    public void iShouldSeeAnErrorMessage(String errorMessage) {
        // Validate the error message
        driver.quit();
    }
}
