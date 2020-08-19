<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>

<!--[if IE 7]>

<html class="ie ie7 no-js" lang="en-US">

<![endif]-->

<!--[if IE 8]>

<html class="ie ie8 no-js" lang="en-US">

<![endif]-->

<!--[if !(IE 7) | !(IE 8)  ]><!-->

<html lang="en" class="no-js">


<!-- moviesingle07:38-->

<head>

   <!-- Basic need -->

   <title></title>

   <meta charset="UTF-8">

   <meta name="description" content="">

   <meta name="keywords" content="">

   <meta name="author" content="">

   <link rel="profile" href="#">


    <!--Google Font-->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600">

   <!-- Mobile specific meta -->

   <meta name="viewport" content="width=device-width, initial-scale=1">

   <meta name="format-detection" content="telephone-no">


   <!-- CSS files -->

   <link rel="stylesheet" href="css/plugins.css">

   <link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<style type="text/css">.fancybox-margin{margin-right:22px;}</style>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script> 
<script src="https://d3js.org/d3.v3.min.js"></script>
<script src="https://rawgit.com/jasondavies/d3-cloud/master/build/d3.layout.cloud.js" type="text/JavaScript"></script>

<script>
//var paging;
//var currentPage = document.location.href.split("=");
//console.log(currentPage);
var currentP=1;
   
  
</script>
    
</head>


<body style="overflow: visible;">
 <script type="text/javascript">

    google.charts.load("current", {packages:['corechart']});

    $.ajax({
        url : "/getchartData",
        method : "GET", //"POST", "GET",  v1.9.0.이전 type
        contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
        data : "movieCode=", //***********
        
        dataType : "json", //서버로부터 오는 응답 xml, json, script, html
        success : function(
              resultObject) {
           drawChart(resultObject,regionName);
        }
     });
    
    
    
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
    	var scoreCountArray = [];
    	scoreCountArray.push(["Element", "★", { role: "style" } ]);
    	<c:forEach items="${SCORECOUNT}" var="vo">
    	
    		//scoreCountArray.push("${vo.countperson}");
    		scoreCountArray.push(["${vo.score}", parseInt("${vo.countperson}"), 'stroke-color: #ffff00; stroke-width: 1; fill-color: #FFFFFF']);
    	</c:forEach>
    	 
    	console.log(scoreCountArray);
    	
      var data = google.visualization.arrayToDataTable(scoreCountArray);
     /*  [

          ["Element", "★", { role: "style" } ],

          ["", scoreCountArray[], 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 2, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 4, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 35, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 54, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 153, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 193, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 133, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 40, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'],

          ["", 28, 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF']

        ] */

      var view = new google.visualization.DataView(data);

      view.setColumns([0, 1,

                       { calc: "stringify",

                         sourceColumn: 1,

                         type: "string",

                         role: "annotation" },

                       2]);


      var options = {
    		  //tooltip:  {textStyle:{color:"#ffffff"}},
    	animation: {"startup": true,
    			"duration":1500,
    			"easing":"out"},
    	bar : {
    				groupWidth : '50%' // 예제에서 이 값을 수정
    			},
        title: "Movie Chart",

        width: 850,

        height: 350,


        legend: { position: "none",
        		textStyle:{color: "#ffffff"}
    			},
    	hAxis:{textStyle:{color:"#ffffff"}},
    	vAxis:{textStyle:{color:"#ffffff"}},

        chartArea: {
            backgroundColor: {
              fill: 'black',             
            },
         },                   
        gridlines: {
              fill: 'none'
          },        
        backgroundColor: {
              fill: '',
              fillOpacity: 0.8
            },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
  </script>
  
 <script type="text/javascript">

var vo = '${MOVIEVIEW}';

console.log('qffwefw');

console.log('qffwefw');

</script> 



<!--preloading-->

<div id="preloader" style="display: none;" class="">

    <img class="logo" src="images/그림9.png" alt="" width="119" height="58">

    <div id="status" style="display: none;">
        <span></span>

        <span></span>

    </div>

</div>

<!--end of preloading-->

<!--login form popup-->

<div class="overlay"><div class="login-wrapper" id="login-content">

    <div class="login-content">

        <a href="#" class="close">x</a>

        <h3>Login</h3>

        <form method="post" action="#">

           <div class="row">

               <label for="username">

                    Username:

                    <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required">

                </label>

           </div>

           

            <div class="row">

               <label for="password">

                    Password:

                    <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">

                </label>

            </div>

            <div class="row">

               <div class="remember">

               <div>

                  <input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>

               </div>

                  <a href="#">Forget password ?</a>

               </div>

            </div>

           <div class="row">

               <button type="submit">Login</button>

           </div>

        </form>

        <div class="row">

           <p>Or via social</p>

            <div class="social-btn-2">

               <a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>

               <a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>

            </div>

        </div>

    </div>

</div></div>

<!--end of login form popup-->

<!--signup form popup-->

<div class="overlay"><div class="login-wrapper" id="signup-content">

    <div class="login-content">

        <a href="#" class="close">x</a>

        <h3>sign up</h3>

        <form method="post" action="#">

            <div class="row">

                 <label for="username-2">

                    Username:

                    <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required">

                </label>

            </div>

           

            <div class="row">

                <label for="email-2">

                    your email:

                    <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">

                </label>

            </div>

             <div class="row">

                <label for="password-2">

                    Password:

                    <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">

                </label>

            </div>

             <div class="row">

                <label for="repassword-2">

                    re-type Password:

                    <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required">

                </label>

            </div>

           <div class="row">

             <button type="submit">sign up</button>

           </div>

        </form>

    </div>

</div></div>

<!--end of signup form popup-->


<!-- BEGIN | Header -->

<header class="ht-header">

   <div class="container">

      <nav class="navbar navbar-default navbar-custom">

            <!-- Brand and toggle get grouped for better mobile display -->

            <div class="navbar-header logo">

                <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">

                   <span class="sr-only">Toggle navigation</span>

                   <div id="nav-icon1">

                     <span></span>

                     <span></span>

                     <span></span>

                  </div>

                </div>

                <a href="more.do"><img class="logo" src="images/그림9.png" alt="" width="119" height="58"></a>

             </div>

            <!-- Collect the nav links, forms, and other content for toggling -->

            <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">

               <ul class="nav navbar-nav flex-child-menu menu-left">

                  <li class="hidden">

                     <a href="#page-top"></a>

                  </li>

                  

                 

                  

                  

                  

                  <li class="dropdown first">

                     

                     <ul class="dropdown-menu level1 dropdownhover-bottom" style="display: none;">

                        <li class="dropdown">

                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Movie grid<i class="ion-ios-arrow-forward"></i></a>

                           <ul class="dropdown-menu level2 dropdownhover-right" style="display: none;">

                              <li><a href="moviegrid.html">Movie grid</a></li>

                              <li><a href="moviegridfw.html">movie grid full width</a></li>

                           </ul>

                        </li>         

                        <li><a href="movielist.html">Movie list</a></li>

                        <li><a href="moviesingle.html">Movie single</a></li>

                        <li class="it-last"><a href="seriessingle.html">Series single</a></li>

                     </ul>

                  </li>

                  

                  

                  <li class="dropdown first">

                     

                     <ul class="dropdown-menu level1 dropdownhover-bottom" style="display: none;">

                        <li><a href="userfavoritegrid.html">user favorite grid</a></li>

                        <li><a href="userfavoritelist.html">user favorite list</a></li>

                        <li><a href="userprofile.html">user profile</a></li>

                        <li class="it-last"><a href="userrate.html">user rate</a></li>

                     </ul>

                  </li>

               </ul>

               

            </div>

         <!-- /.navbar-collapse -->

       </nav>

       

       <!-- top search form -->

       

   </div>

</header>

<!-- END | Header -->


<div class="hero mv-single-hero">

   <div class="container">

      <div class="row">

         <div class="col-md-12">

            <!-- <h1> movie listing - list</h1>

            <ul class="breadcumb">

               <li class="active"><a href="#">Home</a></li>

               <li> <span class="ion-ios-arrow-right"></span> movie listing</li>

            </ul> -->

         </div>

      </div>

   </div>

</div>

<div class="page-single movie-single movie_single">

   <div class="container">

      <div class="row ipad-width2">

         <div class="col-md-4 col-sm-12 col-xs-12">

            <div class="movie-img sticky-sb" style="top: 0px;">

               <img src="${MOVIEVIEW.image}" alt="">

               

            </div>

         </div>

					 
         <div class="col-md-8 col-sm-12 col-xs-12">
            <div class="movie-single-ct main-content">

               <h1 class="bd-hd">${MOVIEVIEW.title} 
               		<p style="font-size:24px; color:#cc3300;"><i class="ion-android-star"></i>${MOVIEVIEW.score}&nbsp;/&nbsp;10 </p>
                    <p style="font-size:20px; color:#0066cc;">${MOVIEVIEW.count}&nbsp; Reviews </p> 	
               </h1>
		

               <div class="movie-rate">
               		              
<div id="columnchart_values"></div>  
 
					
                 
   <div>            

            

         






      

                  

      </div>               

                  

                  

         

         

         

         

         

         

         

         

      <div>   

         

         

         

    			 </div>   


               </div>

               <div class="movie-tabs">

                  <div class="tabs">

                     <ul class="tab-links tabs-mv">

                        <li class="active"><a href="#overview">Overview</a></li>

                        <li class=""><a href="#reviews">REVIEW</a></li>

                        <li></li>

                        <li></li> 

                        <li class=""></li>                        

                     </ul>

                      <div class="tab-content">

                          <div id="overview" class="tab active" style="">

                              <div class="row">
                                 <div class="title-hd-sm">

                                   

                                 </div>

                                 <div class="col-md-8 col-sm-12 col-xs-12">

                                    <p>${MOVIEVIEW.overview}</p>



                                 <div class="mvsingle-item ov-item">

                                    <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image11.jpg"></a>

                                    <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image21.jpg"></a>

                                    <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image31.jpg"></a>

                                    <div class="vd-it">

                                       

                                       

                                    </div>

                                 </div>

                                 <div class="title-hd-sm">

                                    <h4>출연배우</h4>

                                 </div>

                                 <!-- movie cast -->

                                <div class="mvcast-item"> 
                                 	<c:forEach items="${ACTORLIST}" var="actorlist">
										<div class="cast-it">
											<div class="cast-left">           
                          			          <a href="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=+${actorlist}">${actorlist}</a>
                              			    </div>
                       				    </div>
									</c:forEach>
								</div>

                                 <!-- movie user review -->

                                 <div class="mv-user-review-item" style="display:none;">

                                    <h3>Best Marvel movie in my opinion</h3>

                                    

                                    

                                    <p>This is by far one of my favorite movies from the MCU. The introduction of new Characters both good and bad also makes the movie more exciting. giving the characters more of a back story can also help audiences relate more to different characters better, and it connects a bond between the audience and actors or characters. Having seen the movie three times does not bother me here as it is as thrilling and exciting every time I am watching it. In other words, the movie is by far better than previous movies (and I do love everything Marvel), the plotting is splendid (they really do out do themselves in each film, there are no problems watching it more than once.</p>

                                 </div>

                                 </div>

                                 <div class="col-md-4 col-xs-12 col-sm-12">

                                    <div class="sb-it">

                                       <h6>Director: </h6>

                                       <p><a href="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=+${MOVIEVIEW.director}">${MOVIEVIEW.director}</a></p>

                                    </div>

                                    <div class="sb-it">
                                       <h6>Stars: </h6> 
										<p>	
                                      <c:forEach items="${ACTORLIST}" var="actorlist">
                          			        <a href="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=+${actorlist}">${actorlist}</a>
									  </c:forEach>
										</p>
                                    </div>

                                    <div class="sb-it">

                                       <h6>Genres:</h6>
                                       <p>
									<c:forEach items="${GENRESLIST}" var="list">
                                       <a href="#">${list}</a>
									</c:forEach> 
									   </p>
                                    </div>

                                    <div class="sb-it">

                                       <h6>Release Date:</h6>

                                       <p>${MOVIEVIEW.date}</p>

                                    </div>

                                 </div>

                              </div>

                          </div>

                          <div id="reviews" class="tab review" style="display: none;">

                             <div class="row">

                                 <div class="rv-hd">

                                    <div class="div">


                                    </div>

                                    

                                 </div>
								<div class="title-hd-sm">
                                    <h4>주요 키워드</h4>
								</div>
                             
                              <div id="wordcloud"></div>

                                 <div >


<div id = "emotion_score_low" ></div>
<!-- <div id = "emotion_score_high" ></div>	 -->


                              </div>
                              
                              <script type="text/javascript">

    google.charts.load("current", {packages:['corechart']});

    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
    	var scoreCountArray = [];
    	scoreCountArray.push(["Element", "감정분석 1~3", "감정분석8~10" ]);

    	console.log('push'+scoreCountArray[0]);
    	<c:forEach items="${EMOTIONDATA_LOW}" var="vo" >
    	
    		//scoreCountArray.push("${vo.countperson}");
			//scoreCountArray.push(["${vo.score}", parseInt("${vo.countperson}"),'stroke-color: #ffff00; stroke-width: 1; fill-color: #FFFFFF']);
    		scoreCountArray.push(["${vo.score}", parseInt("${vo.countperson}")]);
    	</c:forEach>
    	scoreCountArray[1].push(0);
    	<c:forEach items="${EMOTIONDATA_HIGH}" var="vo" varStatus="status">
    	console.log('forEach'+"${status.count}");

		scoreCountArray[parseInt("${status.count}")+1].push(parseInt("${vo.countperson}"));
		//scoreCountArray[parseInt("${status.count}")].push(parseInt('stroke-color: #ffff00; stroke-width: 1; fill-color: #FFFFFF'));
		</c:forEach>
    	console.log(scoreCountArray);
    	
      var data = google.visualization.arrayToDataTable(scoreCountArray);
     

      var view = new google.visualization.DataView(data);

      view.setColumns([0, 1,

                       { calc: "stringify",

                         sourceColumn: 1,

                         type: "string",

                         role: "annotation" },

                       2]);


      var options = {
    		  //tooltip:  {textStyle:{color:"#ffffff"}},
    	animation: {"startup": true,
    			"duration":1500,
    			"easing":"out"},
    	bar : {
    				groupWidth : '50%' // 예제에서 이 값을 수정
    			},
    	curveType: 'function',
        title: "Movie Chart",

        width: 850,

        height: 350,


        legend: { position: "none",
        		textStyle:{color: "#ffffff"}
    			},
    	hAxis:{textStyle:{color:"#ffffff"}},
    	vAxis:{textStyle:{color:"#ffffff"}},

        chartArea: {
            backgroundColor: {
              fill: 'black',             
            },
         },                   
        gridlines: {
              fill: 'none'
          },        
        backgroundColor: {
              fill: '',
              fillOpacity: 0.8
            },
      };
      //var chart = new google.visualization.ColumnChart(document.getElementById("emotion_score_low"));
      var chart = new google.visualization.LineChart(document.getElementById("emotion_score_low"));
      chart.draw(view, options);
  }
  </script>
                              
                      <script type="text/javascript">

    google.charts.load("current", {packages:['corechart']});

    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
    	var scoreCountArray = [];
    	scoreCountArray.push(["Element", "감정분석", { role: "style" } ]);
    	<c:forEach items="${EMOTIONDATA_HIGH}" var="vo">
    	
    		//scoreCountArray.push("${vo.countperson}");
    		scoreCountArray.push(["${vo.score}", parseInt("${vo.countperson}"), 'stroke-color: #ffff00; stroke-width: 1; fill-color: #FFFFFF']);
    	</c:forEach>
    	 
    	console.log(scoreCountArray);
    	
      var data = google.visualization.arrayToDataTable(scoreCountArray);
     

      var view = new google.visualization.DataView(data);

      view.setColumns([0, 1,

                       { calc: "stringify",

                         sourceColumn: 1,

                         type: "string",

                         role: "annotation" },

                       2]);


      var options = {
    		  //tooltip:  {textStyle:{color:"#ffffff"}},
    	animation: {"startup": true,
    			"duration":10000,
    			"easing":"out"},
    	bar : {
    				groupWidth : '50%' // 예제에서 이 값을 수정
    			},
        title: "Movie Chart",
    	curveType: 'function',

        width: 850,

        height: 350,


        legend: { position: "none",
        		textStyle:{color: "#ffffff"}
    			},
    	hAxis:{textStyle:{color:"#ffffff"}},
    	vAxis:{textStyle:{color:"#ffffff"}},

        chartArea: {
            backgroundColor: {
              fill: 'black',             
            },
         },                   
        gridlines: {
              fill: 'none'
          },        
        backgroundColor: {
              fill: '',
              fillOpacity: 0.8
            },
      };
      var chart = new google.visualization.LineChart(document.getElementById("emotion_score_high"));
      chart.draw(view, options);
  }
  </script>        
                              
                              
                              
                              
                              
                              
                              

                         
	
<div id="list0"></div>





    <script>
     	$(document).ready(function() {
			word_count =  {}
        //카운팅 예외단어..
    	$.ajax({ 
			url:"/word.do",
			type :"get",
			contentType:"application/x-www-form-urlencoded; charset=UTF-8", 
			data:"movieCode=${MOVIEVIEW.movieCode}",
			dataType:"json",
			success:function(jsonList) {   
					console.log(jsonList);  
					
					$.map(jsonList, function(vvo, key){ 
						word_count[vvo.rword] = vvo.rcnt
					});
       /*  word_count =  {
				"갈라파고스 섬(Noun: 41, 7)": "40",
				"갈라파고스(Noun: 41, 5)": "40",
				"경제(Noun: 2, 2)": "40",
				"보고서(Noun: 15, 3)": "40",
				"살길(Noun: 36, 2)": "40",
				"살길22(Noun: 36, 2)": "40",
				"시장(Noun: 24, 2)": "40",
				"업계(Noun: 57, 2)": "40",
				"원인(Noun: 11, 2)": "40",
				"원하는 혁신(Noun: 28, 6)": "40"
		} */
        console.log(word_count); 
        /* 
        {back: 1,
        bar: 1,
        be: 3,
        capital: 1 
        }*/
        
		//-------------------------------------------------재석재석재석 크기조절
        var svg_location = "#wordcloud";
        var width = $(document).width() * 0.4;
        var height = $(document).height() * 0.3;

        var fill = d3.scale.category20();

        var word_entries = d3.entries(word_count);

        var xScale = d3.scale.linear()
           .domain([0, d3.max(word_entries, function(d) {
              return d.value;
            })
           ])
           .range([10,100]);

        d3.layout.cloud().size([width, height])
          .timeInterval(20)
          .words(word_entries)
          .fontSize(function(d) { return xScale(+d.value); })
          .text(function(d) { return d.key; })
          .rotate(function() { return ~~(Math.random() * 2) * 90; })
          .font("Impact")
          .on("end", draw)
          .start();

        function draw(words) {
          d3.select(svg_location).append("svg")
              .attr("width", width)
              .attr("height", height)
            .append("g")
              .attr("transform", "translate(" + [width >> 1, height >> 1] + ")")
            .selectAll("text")
              .data(words)
            .enter().append("text")
              .style("font-size", function(d) { return xScale(d.value) + "px"; })
              .style("font-family", "Impact")
              .style("fill", function(d, i) { return fill(i); })
              .attr("text-anchor", "middle")
              .attr("transform", function(d) {
                return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
              })
              .text(function(d) { return d.key; });
        }

        d3.layout.cloud().stop();
        
			} // end of success()
			});	//end of $.ajax

});      
     	 $.ajax({
             
             url : "/movieReview2222.do",
             method : "get",  //"POST", "GET",  v1.9.0.이전 type
             contentType : 'application/x-www-form-urlencoded; charset=UTF-8',  
             data : "currentPage=1"+"&movieCode=${MOVIEVIEW.movieCode}",  //***********
             dataType : "json",  //서버로부터 오는 응답 xml, json, script, html
             success : function(result){
                
                var reviewhtml="";
                $.map(result, function(vv, i){
                   
                 //paging = vv.pagingHTML;
                 //alert(paging);
                 //alert(vv.pagingHTML);
                 console.log("---------------"); //vv.review);
                 
                 reviewhtml+='<div class=\"mv-user-review-item\">';
                 reviewhtml+='<div class=\"user-infor\">	 <div>';
                 reviewhtml+='   	<p class=\"site\" style=\"font-size:15px; color:#cc3300;\">감정수치 : '+vv.emotion+'</p>';
                 reviewhtml+='    <p class=\"site\" style=\"font-size:14px; color:#ffff99;\"> 별점 : <i class=\"ion-android-star\"></i>'+vv.score+'</p><p></p>';
                 reviewhtml+='</div></div><p>'+vv.review+' </p></div>';
                 });
                console.log(reviewhtml);
                $('#list0').empty();  
                $("#list0").html(reviewhtml);
             
             }


        }); 
        //$("#lsit").html(result.reviewList);
        //$("#list").html(paging);
        $.ajax({
             url : "/movieReview.do",
             method : "get",  //"POST", "GET",  v1.9.0.이전 type
             contentType : 'application/x-www-form-urlencoded; charset=UTF-8',  
             data : "currentPage=1"+"&movieCode=${MOVIEVIEW.movieCode}",  //***********
             dataType : "html",  //서버로부터 오는 응답 xml, json, script, html
             success : function(result){                 
                 

                 $('#list1').children().remove();
                   $("#list1").html(result);
               
             }
                   
        });
        
        
        
        
        function reviewPaging (currentPaaaaaaaa){
     	 
      $.ajax({
                  
                  url : "/movieReview2222.do",
                method : "get",  //"POST", "GET",  v1.9.0.이전 type
                contentType : 'application/x-www-form-urlencoded; charset=UTF-8',  
                data : "currentPage="+currentPaaaaaaaa+"&movieCode=${MOVIEVIEW.movieCode}",  //***********
                dataType : "json",  //서버로부터 오는 응답 xml, json, script, html
                success : function(result){
                   
                   var reviewhtml="";
                   $.map(result, function(vv, i){
                      
                    //paging = vv.pagingHTML;
                    //alert(paging);
                    //alert(vv.pagingHTML);
                    console.log(vv.review);
                    
                
                    
                    reviewhtml+='<div class=\"mv-user-review-item\">';
                    reviewhtml+='   <div class=\"user-infor\"> <div>';
                    reviewhtml+='   	<p class=\"site\" style=\"font-size:15px; color:#cc3300;\">감정수치 : '+vv.emotion+'</p>';
                    reviewhtml+='    <p class=\"site\" style=\"font-size:14px; color:#ffff99;\"> 별점 : <i class=\"ion-android-star\"></i>'+vv.score+'</p><p></p>';
                    reviewhtml+='</div></div><p>'+vv.review+' </p></div>';
                    });
                 	$('#list0').children().remove();
                   $("#list0").html(reviewhtml);
                
                }

           }); 
           //$("#lsit").html(result.reviewList);
           //$("#list").html(paging);
           $.ajax({
                  url : "/movieReview.do",
                method : "get",  //"POST", "GET",  v1.9.0.이전 type
                contentType : 'application/x-www-form-urlencoded; charset=UTF-8',  
                data : "movieCode=${MOVIEVIEW.movieCode}"+"&currentPage="+currentPaaaaaaaa,  //***********
                dataType : "html",  //서버로부터 오는 응답 xml, json, script, html
                success : function(result){                 
             	   console.log(result);

                    $('#list1').children().remove();
                      $("#list1").html(result);
                  
                }
                      
           });
           
        }
     	
     	
     	
     	
</script>

                              

                             

                              <div class="topbar-filter">

                               
                                 <div id = "list1">

                                    

                                 </div>

                              </div>

                              </div>

                          </div>

                          <div id="cast" class="tab" style="display: none;">

                             <div class="row">

                                 <h3>Cast &amp; Crew of</h3>

                                   <h2>Avengers: Age of Ultron</h2>

                              <!-- //== -->

                                   <div class="title-hd-sm">

                                 <h4>Directors &amp; Credit Writers</h4>

                              </div>

                              <div class="mvcast-item">                                 

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JW</h4>

                                       <a href="#">Joss Whedon</a>

                                    </div>

                                    <p>...  Director</p>

                                 </div>

                              </div>

                              <!-- //== -->

                              <div class="title-hd-sm">

                                 <h4>Directors &amp; Credit Writers</h4>

                              </div>

                              <div class="mvcast-item">                                 

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>SL</h4>

                                       <a href="#">Stan Lee</a>

                                    </div>

                                    <p>...  (based on Marvel comics)</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JK</h4>

                                       <a href="#">Jack Kirby</a>

                                    </div>

                                    <p>...  (based on Marvel comics)</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JS</h4>

                                       <a href="#">Joe Simon</a>

                                    </div>

                                    <p>...  (character created by: Captain America)</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JS</h4>

                                       <a href="#">Joe Simon</a>

                                    </div>

                                    <p>...  (character created by: Thanos)</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>RT</h4>

                                       <a href="#">Roy Thomas</a>

                                    </div>

                                    <p>...  (character created by: Ultron, Vision)</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JB</h4>

                                       <a href="#">John Buscema</a>

                                    </div>

                                    <p>...  (character created by: Ultron, Vision)</p>

                                 </div>

                              </div>

                              <!-- //== -->

                              <div class="title-hd-sm">

                                 <h4>Cast</h4>

                              </div>

                              <div class="mvcast-item">                                 

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast1.jpg" alt="">

                                       <a href="#">Robert Downey Jr.</a>

                                    </div>

                                    <p>...  Robert Downey Jr.</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast2.jpg" alt="">

                                       <a href="#">Chris Hemsworth</a>

                                    </div>

                                    <p>...  Thor</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast3.jpg" alt="">

                                       <a href="#">Mark Ruffalo</a>

                                    </div>

                                    <p>...  Bruce Banner/ Hulk</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast4.jpg" alt="">

                                       <a href="#">Chris Evans</a>

                                    </div>

                                    <p>...  Steve Rogers/ Captain America</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast5.jpg" alt="">

                                       <a href="#">Scarlett Johansson</a>

                                    </div>

                                    <p>...  Natasha Romanoff/ Black Widow</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast6.jpg" alt="">

                                       <a href="#">Jeremy Renner</a>

                                    </div>

                                    <p>...  Clint Barton/ Hawkeye</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast7.jpg" alt="">

                                       <a href="#">James Spader</a>

                                    </div>

                                    <p>...  Ultron</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <img src="images/uploads/cast9.jpg" alt="">

                                       <a href="#">Don Cheadle</a>

                                    </div>

                                    <p>...  James Rhodes/ War Machine</p>

                                 </div>

                              </div>

                              <!-- //== -->

                              <div class="title-hd-sm">

                                 <h4>Produced by</h4>

                              </div>

                              <div class="mvcast-item">                                 

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>VA</h4>

                                       <a href="#">Victoria Alonso</a>

                                    </div>

                                    <p>...  executive producer</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>MB</h4>

                                       <a href="#">Mitchel Bell</a>

                                    </div>

                                    <p>...  co-producer (as Mitch Bell)</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JC</h4>

                                       <a href="#">Jamie Christopher</a>

                                    </div>

                                    <p>...  associate producer</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>LD</h4>

                                       <a href="#">Louis Dâ€™Esposito</a>

                                    </div>

                                    <p>...  executive producer</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JF</h4>

                                       <a href="#">Jon Favreau</a>

                                    </div>

                                    <p>...  executive producer</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>KF</h4>

                                       <a href="#">Kevin Feige</a>

                                    </div>

                                    <p>...  producer</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>AF</h4>

                                       <a href="#">Alan Fine</a>

                                    </div>

                                    <p>...  executive producer</p>

                                 </div>

                                 <div class="cast-it">

                                    <div class="cast-left">

                                       <h4>JF</h4>

                                       <a href="#">Jeffrey Ford</a>

                                    </div>

                                    <p>...  associate producer</p>

                                 </div>

                              </div>

                              </div>

                             </div>

                             <div id="media" class="tab" style="display: none;">

                             <div class="row">

                                <div class="rv-hd">

                                    <div>

                                       <h3>Videos &amp; Photos of</h3>

                                         <h2>Skyfall: Quantum of Spectre</h2>

                                    </div>

                                 </div>

                                 <div class="title-hd-sm">

                                 <h4>Videos <span>(8)</span></h4>

                              </div>

                              <div class="mvsingle-item media-item">

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item1.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Trailer:  Watch New Scenes</a></h6>

                                       <p class="time"> 1: 31</p>

                                    </div>

                                 </div>

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item2.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Featurette: â€œAvengers Re-Assembled</a></h6>

                                       <p class="time"> 1: 03</p>

                                    </div>

                                 </div>

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item3.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Interview: Robert Downey Jr</a></h6>

                                       <p class="time"> 3:27</p>

                                    </div>

                                 </div>

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item4.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Interview: Scarlett Johansson</a></h6>

                                       <p class="time"> 3:27</p>

                                    </div>

                                 </div>

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item1.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Featurette: Meet Quicksilver &amp; The Scarlet Witch</a></h6>

                                       <p class="time"> 1: 31</p>

                                    </div>

                                 </div>

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item2.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Interview: Director Joss Whedon</a></h6>

                                       <p class="time"> 1: 03</p>

                                    </div>

                                 </div>

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item3.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Interview: Mark Ruffalo</a></h6>

                                       <p class="time"> 3:27</p>

                                    </div>

                                 </div>

                                 <div class="vd-item">

                                    <div class="vd-it">

                                       <img class="vd-img" src="images/uploads/vd-item4.jpg" alt="">

                                       <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0" rel="playlist"><img src="images/uploads/play-vd.png" alt=""></a>

                                    </div>

                                    <div class="vd-infor">

                                       <h6> <a href="#">Official Trailer #2</a></h6>

                                       <p class="time"> 3:27</p>

                                    </div>

                                 </div>

                              </div>

                              <div class="title-hd-sm">

                                 <h4>Photos <span> (21)</span></h4>

                              </div>

                              <div class="mvsingle-item">

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image11.jpg"><img src="images/uploads/image1.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image21.jpg"><img src="images/uploads/image2.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image31.jpg"><img src="images/uploads/image3.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image41.jpg"><img src="images/uploads/image4.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image51.jpg"><img src="images/uploads/image5.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image61.jpg"><img src="images/uploads/image6.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image71.jpg"><img src="images/uploads/image7.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image81.jpg"><img src="images/uploads/image8.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image91.jpg"><img src="images/uploads/image9.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image101.jpg"><img src="images/uploads/image10.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image111.jpg"><img src="images/uploads/image1-1.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image121.jpg"><img src="images/uploads/image12.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image131.jpg"><img src="images/uploads/image13.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image141.jpg"><img src="images/uploads/image14.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image151.jpg"><img src="images/uploads/image15.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image161.jpg"><img src="images/uploads/image16.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image171.jpg"><img src="images/uploads/image17.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image181.jpg"><img src="images/uploads/image18.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image191.jpg"><img src="images/uploads/image19.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image201.jpg"><img src="images/uploads/image20.jpg" alt=""></a>

                                 <a class="img-lightbox" data-fancybox-group="gallery" href="images/uploads/image211.jpg"><img src="images/uploads/image2-1.jpg" alt=""></a>

                              </div>

                             </div>

                             </div>

                             <div id="moviesrelated" class="tab" style="display: none;">

                                <div class="row">

                           
                           

                                   <div class="topbar-filter">

                                 <p>Found <span>12 movies</span> in total</p>

                                 <label>Sort by:</label>

                                 <select>

                                    <option value="popularity">Popularity Descending</option>

                                    <option value="popularity">Popularity Ascending</option>

                                    <option value="rating">Rating Descending</option>

                                    <option value="rating">Rating Ascending</option>

                                    <option value="date">Release date Descending</option>

                                    <option value="date">Release date Ascending</option>

                                 </select>

                              </div>

                              <div class="movie-item-style-2">

                                 <img src="images/uploads/mv1.jpg" alt="">

                                 <div class="mv-item-infor">

                                    <h6><a href="#">oblivion <span>(2012)</span></a></h6>

                                    <p class="rate"><i class="ion-android-star"></i><span>8.1</span> /10</p>

                                    <p class="describe">Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity...</p>

                                    <p class="run-time"> Run Time: 2h21â€™    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>

                                    <p>Director: <a href="#">Joss Whedon</a></p>

                                    <p>Stars: <a href="#">Robert Downey Jr.,</a> <a href="#">Chris Evans,</a> <a href="#">  Chris Hemsworth</a></p>

                                 </div>

                              </div>

                              <div class="movie-item-style-2">

                                 <img src="images/uploads/mv2.jpg" alt="">

                                 <div class="mv-item-infor">

                                    <h6><a href="#">into the wild <span>(2014)</span></a></h6>

                                    <p class="rate"><i class="ion-android-star"></i><span>7.8</span> /10</p>

                                    <p class="describe">As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat...</p>

                                    <p class="run-time"> Run Time: 2h21â€™    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>

                                    <p>Director: <a href="#">Anthony Russo,</a><a href="#">Joe Russo</a></p>

                                    <p>Stars: <a href="#">Chris Evans,</a> <a href="#">Samuel L. Jackson,</a> <a href="#">  Scarlett Johansson</a></p>

                                 </div>

                              </div>

                              <div class="movie-item-style-2">

                                 <img src="images/uploads/mv3.jpg" alt="">

                                 <div class="mv-item-infor">

                                    <h6><a href="#">blade runner  <span>(2015)</span></a></h6>

                                    <p class="rate"><i class="ion-android-star"></i><span>7.3</span> /10</p>

                                    <p class="describe">Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help...</p>

                                    <p class="run-time"> Run Time: 2h21â€™    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>

                                    <p>Director: <a href="#">Peyton Reed</a></p>

                                    <p>Stars: <a href="#">Paul Rudd,</a> <a href="#"> Michael Douglas</a></p>

                                 </div>

                              </div>

                              <div class="movie-item-style-2">

                                 <img src="images/uploads/mv4.jpg" alt="">

                                 <div class="mv-item-infor">

                                    <h6><a href="#">Mulholland pride<span> (2013)  </span></a></h6>

                                    <p class="rate"><i class="ion-android-star"></i><span>7.2</span> /10</p>

                                    <p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>

                                    <p class="run-time"> Run Time: 2h21â€™    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>

                                    <p>Director: <a href="#">Shane Black</a></p>

                                    <p>Stars: <a href="#">Robert Downey Jr., </a> <a href="#">  Guy Pearce,</a><a href="#">Don Cheadle</a></p>

                                 </div>

                              </div>

                              <div class="movie-item-style-2">

                                 <img src="images/uploads/mv5.jpg" alt="">

                                 <div class="mv-item-infor">

                                    <h6><a href="#">skyfall: evil of boss<span> (2013)  </span></a></h6>

                                    <p class="rate"><i class="ion-android-star"></i><span>7.0</span> /10</p>

                                    <p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>

                                    <p class="run-time"> Run Time: 2h21â€™    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>

                                    <p>Director: <a href="#">Alan Taylor</a></p>

                                    <p>Stars: <a href="#">Chris Hemsworth,  </a> <a href="#">  Natalie Portman,</a><a href="#">Tom Hiddleston</a></p>

                                 </div>

                              </div>

                              <div class="topbar-filter">

                                 <label>Movies per page:</label>

                                 <select>

                                    <option value="range">5 Movies</option>

                                    <option value="saab">10 Movies</option>

                                 </select>

                                 <div class="pagination2">

                                    <span>Page 1 of 2:</span>

                                    <a class="active" href="#">1</a>

                                    <a href="#">2</a>

                                    <a href="#"><i class="ion-arrow-right-b"></i></a>

                                 </div>

                              </div>

                                </div>

                             </div>

                      </div>

                  </div>

               </div>

            </div>

         </div>

      </div>

   </div>

</div>

<!-- footer section-->

<footer class="ht-footer">

   

   <div class="ft-copyright">

      <div class="ft-left">

         <p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>

      </div>

      <div class="backtotop">

         <p><a href="#" id="back-to-top">Back to top  <i class="ion-ios-arrow-thin-up"></i></a></p>

      </div>

   </div>

</footer>

<!-- end of footer section-->


<script src="js/jquery.js"></script>

<script src="js/plugins.js"></script>

<script src="js/plugins2.js"></script>

<script src="js/custom.js"></script>



<!-- moviesingle11:03-->

<iframe id="rufous-sandbox" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" style="position: absolute; visibility: hidden; display: none; width: 0px; height: 0px; padding: 0px; border: none;" title="Twitter analytics iframe"></iframe></body>


<!-- moviesingle11:03-->

</html>





