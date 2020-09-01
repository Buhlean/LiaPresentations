import Browser
import Html exposing (Html, text, pre)
import Http
import String
--import Parser exposing (Parser, (|.), (|=), succeed, symbol, float, spaces)

main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }

type Model
  = Failure
  | Loading
  | Success String

init : () -> (Model, Cmd Msg)
init _ =
  ( Loading
  , Http.get
      { url = "https://raw.githubusercontent.com/Buhlean/LiaPresentations/master/XML/gates_virus_example_captions.xml"--"https://video.google.com/timedtext?v=6Af6b_wyiwI&lang=en"
      , expect = Http.expectString GotText
      }
  )

type Msg
  = GotText (Result Http.Error String)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    GotText result ->
      case result of
        Ok fullText ->
          (Success fullText, Cmd.none)
        Err _ ->
          (Failure, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model = Sub.none

view : Model -> Html Msg
view model =
  case model of
    Failure ->
      text "I was unable to load your book."
    Loading ->
      text "Loading..."
    Success fullText ->
      pre [] [ text fullText ]
    
{--
parse_subtitles : String -> List (Float, Float, String)
parse_subtitles xml = 
--}

{--
type alias Cue =
  { start : Float
  , duration : Float
  , content : String
  }
  
strip_front : String -> String
strip_front xml = tail (String.split "<transcript>" xml)

strip_back : String -> String
strip_back xml = head (String.split "</transcript>" xml)
  
cue : Parser Cue
cue =
  succeed Cue
    |. "<text "
    |. "start=\""
    |= float
    |. "\" dur=\""
    |= float
    |. "\">"
    |= 
    
--}
