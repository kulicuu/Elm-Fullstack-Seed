module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Components.Hello exposing (hello)


main : Program Never Int Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }


type alias Model =
    Int


model : number
model =
    0


type Msg
    = NoOp
    | Increment


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Increment ->
            model + 1


view : Model -> Html Msg
view model =
    div [] [ hello model ]



-- div [] [ viewTwo model ]


styles : { img : List ( String, String ) }
styles =
    { img =
        [ ( "width", "33%" )
        , ( "border", "4px solid #337AB7" )
        ]
    }
