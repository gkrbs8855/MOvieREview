<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>ToolTip</title>
        <style type="text/css">
            .body{
                width: 500px;
                height: 600px;
                font-size: 14px;
                background-color: #eee;
            }
            #demo{
                width: 400px;

                margin: auto;
                position: relative;
                border-radius: 10px;
                background-color: #ccc;
                box-shadow: 0 0 0 10px rgba(0, 0, 0, 0.2);
            }
            #demo a{
                color: #11C2EE;
            }
            #demo h2{
                color: #3CC4A9;
            }
            #demo tooltip{
                color: #3CC4A9;
                cursor: help;
            }
            .tooltip-box{
                display: block;
                line-height: 1.6;
                background-color: #fff;
                border: 1px solid #666;
                font-size: 12px;
                border-radius: 5px;
                overflow: auto;
            }
        </style>
    </head>
    <body>
        <div id="demo">
            <h2>tooltip</h2>
            <hr />
            <p>
                a<a class="tooltip" id="tooltip1">a-1</a>a-2。
            </p>

            <p>
               b<a class="tooltip" id="tooltip2">b-1</a>，b-2
            </p>
        </div>
        <script>
            var className = 'tooltip-box';

            var isIE = navigator.userAgent.indexOf('MSIE') > -1;

            function showTooltip(obj, id, html, width, height) {
        if (document.getElementById(id) == null) {

            var tooltipBox;
            tooltipBox = document.createElement('div');
            tooltipBox.className = className;
            tooltipBox.id = id;
            tooltipBox.innerHTML = html;

            obj.appendChild(tooltipBox);

            tooltipBox.style.width = width ? width + 'px' : 'auto';
            tooltipBox.style.height = height ? height + 'px' : 'auto';

            if (!width && isIE) {
                tooltipBox.style.width = tooltipBox.offsetWidth;
            }

            tooltipBox.style.position = "absolute";
            tooltipBox.style.display = "block";

            var left = obj.offsetLeft;
            var top = obj.offsetTop + 20;

            if (left + tooltipBox.offsetWidth > document.body.clientWidth) {
                var demoLeft = document.getElementById("demo").offsetLeft;
                left = document.body.clientWidth - tooltipBox.offsetWidth - demoLeft;
                if (left < 0) left = 0;
            }

            tooltipBox.style.left = left + 'px';
            tooltipBox.style.top = top + 'px';

            obj.onmouseleave = function () {
                setTimeout(function () {
                    document.getElementById(id).style.display = "none";
                }, 100);
            };

        } else {
            document.getElementById(id).style.display = "block";
        }
    }


            var t1 =document.getElementById("tooltip1");
            t1.onmouseenter = function(){
                showTooltip(this,"t1","b",150);
            }

            var t2 =document.getElementById("tooltip2");
            t2.onmouseenter = function(){
                showTooltip(this, "t4", '<img src="img/1.jpg" width="400" /> ', 400);
            }

        </script>
    </body>
</html>