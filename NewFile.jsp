<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Service</title>
        <style>
            *
            {
                margin: 0;
                padding: 0;
            }
            #map
            {
                height: 400px;
                width: 50%;
            }
            
            .weather
            {
                width : 35%;
                border : 1px solid black;
                margin: auto;
                padding: 20px;
                font-size: 20px;
            }
            
        </style>
    </head>
    <body>        
        <h1>
            Web Services Assignment By Sir Kamran Taj Pathan<br/>
            Name  :   Mudabir Burfat <br/>
            Roll No : 2k17/IT/53 <br/> <br/>
        </h1>

        <h2> <p id="time"> </h2> <br/> <br/>
               
        <script> document.getElementById("time").innerHTML = Date() </script>
        
        <div id="map">
                       
        </div>  
        <script>
            function initMap()
            {
                var location = {lat: 25.381930, lng: 68.373040};
                var map = new google.maps.Map(document.getElementById("map"), {
                    zoom:4,
                    center:location
                });
                var marker = new google.maps.Marker({
                   position: location,
                   map: map
                });
            }   
        </script>
        
        <script async defer src ="https://maps.googleapis.com/maps/api/js?key=AIzaSyBzAMvT7bTXSX8HDG3X7PAl7AwW83mj-QQ&callback=initMap">
            
        </script>  
        
        <div class="weather" style="text-align : right"> 
            <a class="weatherwidget-io" href="https://forecast7.com/en/25d4068d36/hyderabad/" data-label_1="HYDERABAD" data-label_2="WEATHER" data-theme="gray" >HYDERABAD WEATHER</a>
            <script>
            !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
            </script>
        </div>  
    </body>
</html>

<!--End -->