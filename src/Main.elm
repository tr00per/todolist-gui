module Main exposing (..)

{-| ToDo List GUI main module
@docs Msg
@docs Model
@docs main
@docs update
@docs view
-}

import Html exposing (Html, button, div, text)
import Html.App as Html
import Html.Events exposing (onClick)


{-| -}
main : Program Never
main =
    Html.beginnerProgram { model = 0, view = view, update = update }


{-| -}
type alias Model =
    Int


{-| -}
type Msg
    = Increment
    | Decrement


{-| -}
update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


{-| -}
view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]
