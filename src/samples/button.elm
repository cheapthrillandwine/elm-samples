module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    String


init : Model
init =
    "Elm is"



-- UPDATE


type Msg
    = Hide
    | Show


update : Msg -> Model -> Model
update msg model =
    case msg of
        Hide ->
            "Elm is "

        Show ->
            " Elm is Simple !!"



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Hide ] [ text "Hide" ]
        , div [] [ text model ]
        , button [ onClick Show ] [ text "Show" ]
        ]
