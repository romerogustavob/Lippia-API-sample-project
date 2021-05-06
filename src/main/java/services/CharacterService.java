package services;

import api.model.CharacterModel;
import api.model.ResponseHeaders;
import com.crowdar.api.rest.MethodsService;
import com.crowdar.api.rest.Response;

import java.util.Map;

public class CharacterService extends MethodsService {

    public static Response get(String jsonName, Map<String,String> parameter) {
        return get(jsonName, CharacterModel.class,parameter);
    }
}
