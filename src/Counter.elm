module Counter exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, br, button, div, text)
import Html.Events exposing (onClick)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Increment10
    | Decrement
    | Decrement10
    | Reset


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Increment10 ->
            model + 10

        Decrement ->
            model - 1

        Decrement10 ->
            model - 10

        Reset ->
            0



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Reset ] [ text "Reset" ]
        , br [] []
        , button [ onClick Decrement ] [ text "-" ]
        , button [ onClick Decrement10 ] [ text "-10" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        , button [ onClick Increment10 ] [ text "+10" ]
        ]
