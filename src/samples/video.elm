module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type Msg
    = NoMsg


type alias Model =
    { videoUrl1 : String
    , videoUrl2 : String
    , title : String
    , description : String
    }


init : Model
init =
    { videoUrl1 = "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"
    , videoUrl2 = "http://clips.vorwaerts-gmbh.de/big_buck_bunny.webm"
    , title = "This is Sample Video Title"
    , description = "This is Sample Video Description"
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
        [ video
            [ src model.videoUrl1
            , controls True
            ]
            []
        , h2 [] [ text model.title ]
        , h4 [] [ text model.description ]
        , video
            [ src model.videoUrl2
            , controls True
            ]
            []
        , h2 [] [ text model.title ]
        , h4 [] [ text model.description ]
        ]
