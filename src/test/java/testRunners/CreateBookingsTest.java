package testRunners;

import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;

@CucumberOptions(
		features = {"src/test/features/createBooking.feature"},
		glue = {"stepDefinitions"}
)

public class CreateBookingsTest extends AbstractTestNGCucumberTests
{

}
