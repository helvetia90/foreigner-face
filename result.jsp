<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
    <!-- Go to www.addthis.com/dashboard to customize your tools --> <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-622b59d0ce8e96ef"></script>
</head>
<body>
    <%= request.getParameter("sex") %>
      <!-- <section class="section">
          <h1 class="title">인공지능 외국인상 테스트</h1>
          <h2 class="subtitle">나는 어떤 외국인과 닮았을까</h2>
      </section>
    <script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

    <script>

      $('#startBtn').click(function(){
        init().then(()=>{
                predict();  
            });
      });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    <script type="text/javascript">
        // More API functions here:
        // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/image

        // the link to your model provided by Teachable Machine export panel
        const URL = "https://teachablemachine.withgoogle.com/models/rSveSrPiy/";
        const URL2 = "https://teachablemachine.withgoogle.com/models/YMk8ZuVU9/";

        let model, webcam, labelContainer, maxPredictions;

        // Load the image model and setup the webcam
        async function init() {
              var modelURL = ""; 
              var metadataURL = "";  

              if(toggle === "man"){
                modelURL = URL + "model.json";
                metadataURL = URL + "metadata.json";
              } else {
                modelURL = URL2 + "model.json";
                metadataURL = URL2 + "metadata.json";
              }


            // load the model and metadata
            // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
            // or files from your local hard drive
            // Note: the pose library adds "tmImage" object to your window (window.tmImage)
            model = await tmImage.load(modelURL, metadataURL);
            maxPredictions = model.getTotalClasses();

            // append elements to the DOM
            labelContainer = document.getElementById("label-container");
            for (let i = 0; i < maxPredictions; i++) { // and class labels
                labelContainer.appendChild(document.createElement("div"));
            console.log("start");
            }
        }

        // run the webcam image through the image model
        async function predict() {
            // predict can take in an image, video or canvas html element
            var image = document.getElementById("face-image");
            const prediction = await model.predict(image, false);
            prediction.sort((a, b) => parseFloat(b.probability) - parseFloat(a.probability));
            var resultMessage = "";
            switch(prediction[0].className){
                case "1":
                    resultMessage = "11111";
                    break;
                case "2":
                    resultMessage = "22222";
                    break;
                default:
                    resultMessage = "zzzxzz";
                    break;        
            }
            $('.resultMessage').html(resultMessage);
            for (let i = 0; i < maxPredictions; i++) {
                const classPrediction =
                    prediction[i].className + ": " + prediction[i].probability.toFixed(2);
                labelContainer.childNodes[i].innerHTML = classPrediction;
            }
        }
    </script>
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
        
            var reader = new FileReader();
        
            reader.onload = function(e) {
                $('.image-upload-wrap').hide();
        
                $('.file-upload-image').attr('src', e.target.result);
                $('.file-upload-content').show();
        
                $('.image-title').html(input.files[0].name);
            };
        
            reader.readAsDataURL(input.files[0]);
            } else {
            removeUpload();
            }
        }
        
        function removeUpload() {
            $('.file-upload-input').replaceWith($('.file-upload-input').clone());
            $('.file-upload-content').hide();
            $('.image-upload-wrap').show();
        }
        $('.image-upload-wrap').bind('dragover', function () {
                $('.image-upload-wrap').addClass('image-dropping');
            });
            $('.image-upload-wrap').bind('dragleave', function () {
                $('.image-upload-wrap').removeClass('image-dropping');
        });

        $(document).ready(function () {
          $('.radio-group .radio').click(function () {
          $('.selected .fa').removeClass('fa-check');
          $('.radio').removeClass('selected');
          $(this).addClass('selected');
    });
}); 
    </script> -->

</body>
<!-- Copyright (c) 2022 by Aaron Vanston (https://codepen.io/aaronvanston/pen/yNYOXR)
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. -->
</html>