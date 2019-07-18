module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type Msg
    = NoMsg


type alias Model =
    { imageUrl1 : String
    , imageUrl2 : String
    , title : String
    , description : String
    }


init : Model
init =
    { imageUrl1 = "https://nzigen.com/flutter-reference/assets/img/samples/logo-jumper.png"
    , imageUrl2 = "https://nzigen.com/flutter-reference/assets/img/samples/logo-jumper.png"
    , title = "This is Sample Image Title"
    , description = "This is Sample Image Description"
    }



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoMsg ->
            model



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ img
            [ src model.imageUrl1, width 300, height 300 ]
            []
        , h2 [] [ text model.title ]
        , h4 [] [ text model.description ]
        , img
            [ src model.imageUrl2, width 300, height 300 ]
            []
        , h2 [] [ text model.title ]
        , h4 [] [ text model.description ]
        ]
