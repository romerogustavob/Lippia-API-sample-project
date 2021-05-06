package services;

import api.model.ErrorResponse;
import com.crowdar.api.rest.MethodsService;
import com.crowdar.api.rest.Response;

import java.util.Map;

public class ErrorService extends MethodsService {

    public static Response get(String jsonName, Map<String,String> parameter) {
        return get(jsonName, ErrorResponse.class,parameter);
    }
}
