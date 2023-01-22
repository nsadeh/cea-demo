module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src)
import Html.Attributes exposing (class)
import Html.Attributes exposing (id)
import Html exposing (input)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import Html.Attributes exposing (value)


---- MODEL ----


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "", Cmd.none )



---- UPDATE ----


type Msg
    = Update String


update : Msg -> Model -> ( Model, Cmd Msg )
update (Update str) _ =
    ( str, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "my-auto w-full", id "searchbar" ]
        [ input
            [ placeholder "I should have a ring and drop shadow that increases when I am clicked"
            , class "w-full h-12 ring-2 rounded-full outline-none px-2 ring-sky-800 focus:ring-sky-400 text-slate-500 focus:drop-shadow-2xl focus:bg-slate-50 hover:drop-shadow-lg"
            , onInput Update
            , value model
            ]
            []
        ]


---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
