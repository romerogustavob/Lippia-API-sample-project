Feature: Rick and Morty

  @RyM @ok
  Scenario Outline: Pedimos un personaje al API de Rick and Morty
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then se obtuvo el response esperado en <entity> con el <jsonNameResponse>
    Examples:
      | jsonName         | statusCode | inputParamiters | operation | entity    | jsonNameResponse     |
      | RyM/rq_character | 200        | character:2     | GET       | CHARACTER | RyM/rs_character_200 |

  @RyM @ok
  Scenario Outline: Pedimos un personaje al API de Rick and Morty
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then la respuesta es correcta
    Examples:
      | jsonName         | statusCode | inputParamiters | operation | entity    | jsonNameResponse     |
      | RyM/rq_character | 200        | character:2     | GET       | CHARACTER | RyM/rs_character_200 |

  @RyM @error
  Scenario Outline: Pedimos un personaje al API de Rick and Morty
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then se obtuvo el response esperado en <entity> con el <jsonNameResponse>
    Examples:
      | jsonName         | statusCode | inputParamiters | operation | entity | jsonNameResponse     |
      | RyM\rc_character | 404        | character:9999  | GET       | ERROR  | RyM\rc_character_404 |