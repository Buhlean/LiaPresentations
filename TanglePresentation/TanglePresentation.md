<!--
author: Alexander Buhl
version: 0.1.0
import: https://raw.githubusercontent.com/Buhlean/LiaTranscriptLiveEdit/master/Module.md
@elev_helper
<div style=" height: auto;  margin: 4px; ">
  <label style="display: inline-block; width: 70px; vertical-align: top; ">@0</label>
  <input type="text" value="@2" style="width: @1px;"/>
  <label style="display: inline-block; vertical-align: bottom; 
                margin-left: 2px; color: #444; font-size: 0.8em; ">@3</label>
</div>
@end

@big_helper
<div style=" height: auto;  margin: 4px; ">
  <label style="display: inline-block; width: 70px; vertical-align: top; ">@0</label>
  <textarea name="@0" style="width: @1px; height: @2px;">@3</textarea>
  <label style="display: inline-block; vertical-align: bottom; 
                margin-left: 2px; color: #444; font-size: 0.8em; ">@4</label>
</div>
@end

@weird_helper
<div style=" height: auto;  margin: 4px; ">
  <input style="display: inline-block; width: 70px; "/>
  <input type="text" value="@2" style="width: @1px;"/>
  <label style="display: inline-block; vertical-align: bottom; 
                margin-left: 2px; color: #444; font-size: 0.8em; ">@3</label>
</div>
@end
@br: <div style="height:4px;"></div>
-->
# One down, two to go
<!-- class = "big" style = "font-size: 1.21em;" -->
Current Project:
<!-- class = "big" style = "font-size: 1.21em;" -->
* [LiaTranscriptLiveEdit](#TLE)
<!-- class = "big" style = "font-size: 1.21em;" -->
Future Projects:
<!-- class = "big" style = "font-size: 1.21em;" -->
* [LiaTangle](#Interactive-Data)
* [LiaElevatorPrompts](#Elevator-Prompts)
## TLE
<p style = "font-size: 1.21em;line-height:1.7;">Watch and work with videos without leaving the course<br/>
Mobile-friendly interface<br/><br/>
Contents:</p>
<!-- class = "big" style = "font-size: 1.21em;" -->
* [demo](#Demo)
* [links](#TLE-Links)
### Demo
@RunTranscriptLE
### TLE Links
https://github.com/Buhlean/LiaTranscriptLiveEdit
## Interactive Data 

<p style = "font-size: 1.21em;line-height:1.7;">Inspired (and implemented ~10 years ago) by Bret Victor<br/>
My plan is to implement this in Lia<br/><br/>
Contents:</p>
<!-- class = "big" style = "font-size: 1.21em;" -->
* [video demo](#Video-Demo)
* [mock-up](#Mock-Up)
* [links](#Tangle-Links)
### Video Demo
!?[TanglePresentation](TanglePresentation.mp4)
### Mock-Up
```` 
@EnTangle

Say we allocate @'input('budget', $3.0 billion') for [..]

We estimate that this will get @'output('828,571') old cars off [..]

The abatement cost is @'output('$301') per ton CO2e of federal spending, [..]
````
<span style="font-size:1.3em;">Output:</span>

Say we allocate <span style="color:#090;">\$3.0 billion</span> for the following program: Car-owners who trade in an old car that gets less than <span style="color:#090;">17 MPG</span>, and purchase a new car that gets better than <span style="color:#090;">24 MPG</span>, will receive a <span style="color:#090;">\$3,500</span> rebate.

We estimate that this will get <span style="color:#00f;">828,571</span> old cars off the road. It will save <span style="color:#00f;">1,068 million gallons</span> of gas (or <span style="color:#00f;">68 hours</span> worth of U.S. gas consumption.) It will avoid <span style="color:#00f;">9.97 million tons</span> CO2e, or <span style="color:#00f;">0.14%</span> of annual U.S. greenhouse gas emissions.

The abatement cost is <span style="color:#00f;">\$301</span> per ton CO2e of federal spending, although it’s <span style="color:#00f;">-\$20</span> per ton CO2e on balance if you account for the money saved by consumers buying less gas.

### Tangle Links
* http://worrydream.com/ClimateChange/#clunker
* http://worrydream.com/Tangle/
## "Elevator Prompts"
<p style = "font-size: 1.21em;line-height:1.7;">A LiaTemplate that aids in describing a diagram, a graph, or code<br/>
Circumventing "blank page syndrome" and helping language learners<br/>
Inspired by the "CV Builder"<br/>
My plan is to implement this in Lia<br/><br/>
Contents:</p>
<!-- class = "big" style = "font-size: 1.21em;" -->
* [CV Builder reference picture](#Video-Demo)
* [mock-up graph](#Elevator-Mock-Up-1)
* [mock-up code](#Elevator-Mock-Up-2)
### Reference
\*to do\*
### Elevator Mock-Up 1
![warming graph](https://upload.wikimedia.org/wikipedia/commons/4/4e/NASA-GISTEMP-Hemispheres.svg) <!-- style="width:500px;border:solid grey 1px;" -->

~~Describe the graph above:~~ <!-- style="font-size:1.3em;" -->
<div>
@br
@elev_helper(x-axis:, 120, year, ~1s)
@elev_helper( , 300, timespan from 1880-2020, ~8s)
@br
@elev_helper(y-axis:, 120, temperature in °C, ~3s)
@elev_helper( , 300, temperature anomaly between -0.5 and +1.5, ~18s)
@br
@elev_helper(Legend:, 360, mean values for northern and southern hemisphere, ~12s)
@elev_helper( , 800, , ~0s)
@br
@elev_helper(Explain:, 250, Low on the left. high on the right!, ~5s)
@elev_helper( , 1000, , ~0s)
@big_helper( , 1000, 100, More, ~2s)
@big_helper(Novel:, 1000, 600, Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren no sea takimata sanctus est Lorem ipsum dolor sit amet., ~15min)
</div>
### Elevator Mock-Up 2
``` C
function(Array A)
  n = A.size
  do{
    swapped = false
    for (i=0; i<n-1; ++i){
      if (A[i] > A[i+1]){
        A.swap(i, i+1)
        swapped = true
      } // Ende if
    } // Ende for
    n = n-1
  } while (swapped)
```
~~Describe the code above:~~ <!-- style="font-size:1.3em;" -->
<div>
@br
@elev_helper(goal:, 120, sort, ~1s)
@elev_helper( , 300, fully sort an array in ascending order, ~8s)
@br
@elev_helper(data:, 120, array, ~1s)
@elev_helper( , 300, needs to be indexable and overwriteable, ~18s)
@br
@elev_helper(how?, 360, compares and swaps, ~12s)
@elev_helper( , 800, nested twice walks across and swaps the highest number to the top, ~0s)
@br
@elev_helper(Explain:, 250, It's the fizzy version of tap water sort., ~5s)
@elev_helper( , 1000, Modified Bubblesort to enable it to stop when finished early with the 'swapped' control variable, ~0s)
</div>
### weird idea
![warming graph](https://colorlib.com/wp/wp-content/uploads/sites/2/jquery-file-upload-scripts.png) <!-- style="width:500px;" -->

~~Describe:~~ <!-- style="font-size:1.3em;" -->
<div>
@br
@weird_helper( , 120,  , ~0s)
@weird_helper( , 300,  , ~0s)
@br
@weird_helper( , 120,  , ~0s)
@weird_helper( , 300,  , ~0s)
@br
@weird_helper( , 360,  , ~0s)
@weird_helper( , 800, , ~0s)
@br
@weird_helper( , 250,  , ~0s)
@weird_helper( , 1000, , ~0s)
@big_helper( , 1000, 100,  , ~0s)
</div>


