import Html exposing (..)
import Html.Attributes exposing (..) 

withStyle html = 
  div []
  [ node "style" [type_ "text/css"] 
    [text "@import url(https://cdnjs.cloudflare.com/ajax/libs/bulma/0.1.2/css/bulma.min.css)"]
  , html
  ]

main =
  div [] 
    [ a [class "button is-primary"] [text "Primary"]
    , a [class "button is-info"] [text "Info"]
    ]
  |> withStyle