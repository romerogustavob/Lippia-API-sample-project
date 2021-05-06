package ar.steps;

import ar.validator.CharacterValidator;
import com.crowdar.core.PageSteps;
import io.cucumber.java.en.Then;

public class CharacterSteps extends PageSteps {
    @Then("la respuesta es correcta")
    public void laRespuestaEsCorrecta() {
        CharacterValidator.validate();
    }
}
