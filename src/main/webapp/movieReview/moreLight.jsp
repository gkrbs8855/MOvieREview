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

<!-- index_light16:05-->
<head>
   <!-- Basic need -->
   <title>welecome to MORE site</title>
   <meta charset="UTF-8">
   <meta name="description" content="">
   <meta name="keywords" content="">
   <meta name="author" content="">
   <link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
   <!-- Mobile specific meta -->
   <meta name=viewport content="width=device-width, initial-scale=1">
   <meta name="format-detection" content="telephone-no">

   <!-- CSS files -->
   <link rel="stylesheet" href="css/plugins.css">
   <link rel="stylesheet" href="css/style.css">
   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=t8opu2q577"></script>
		<script type="text/javascript"
   src="https://www.gstatic.com/charts/loader.js"></script>
		
	<script type="text/javascript"
			   src="https://www.gstatic.com/charts/loader.js"></script>
			   <script>
   $(document).ready(function() {

      google.charts.load('current', {
         'packages' : [ 'corechart' ]
      });
      google.charts.setOnLoadCallback();//drawChart);
      
      $('#Progress_Loading').hide(); //첫 시작시 로딩바를 숨겨준다.
   })
   $(function(){
      $(document).ajaxStart(function () {
         $('#Progress_Loading').show(); //ajax실행시 로딩바를 보여준다.

      })
      $(document).ajaxStop(function(){
         $('#Progress_Loading').hide();
         
      })
   });
   
   

</script>
   

</head>
<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" src="images/그림9.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->
<!--login form popup-->
<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>Login</h3>
        <form method="post" action="#">
           <div class="row">
               <label for="username">
                    Username:
                    <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
           </div>
           
            <div class="row">
               <label for="password">
                    Password:
                    <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
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
</div>
<!--end of login form popup-->
<!--signup form popup-->
<div class="login-wrapper"  id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>sign up</h3>
        <form method="post" action="#">
            <div class="row">
                 <label for="username-2">
                    Username:
                    <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
            </div>
           
            <div class="row">
                <label for="email-2">
                    your email:
                    <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="password-2">
                    Password:
                    <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="repassword-2">
                    re-type Password:
                    <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
           <div class="row">
             <button type="submit">sign up</button>
           </div>
        </form>
    </div>
</div>
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

               
            </div>
         <!-- /.navbar-collapse -->
       </nav>
       
       <!-- top search form -->
      
   </div>
</header>
<!-- END | Header -->

<div class="slider movie-items">
   <div class="container">
      <div class="row">
  		<div  class="slick-multiItemSlider">
  		<c:forEach items="${MOVIELIST}" var="list">
  		
             <div class="movie-item">
                <div class="mv-img">
                   <a href="#"><img src="${list.image}" alt="" width="285" height="437"></a>
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="yell">${list.genres}</span>	
                   </div>
                   <h6><a href="/movieReview/movieSingle.do?movieCode=${list.movieCode}">${list.title}</a></h6>
                   <p><i class="ion-android-star"></i><span>${list.score}</span> </p>
                </div>
             </div> 
          
         </c:forEach>     
         </div>  
<!-- 
          <div  class="slick-multiItemSlider">
             <div class="movie-item">
                <div class="mv-img">
                   <a href="#"><img src="images/ranking/no1.jpg" alt="" width="285" height="437"></a>
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="blue">범죄</span>
                      <span class="yell">액션</span>
                   </div>
                   <h6><a href="/movieReview/movieSingle.do?movieCode=20197922">다만 악에서 구하소서</a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
             
            <div class="movie-item">
                <div class="mv-img">
                   <a href="#"><img src="images/ranking/no2.jpg" alt="" width="285" height="437"></a>
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="yell">드라마</span>
                      <span class="green">액션</span>
                   </div>
                   <h6><a href="/movieReview/movieSingle.do?movieCode=20196271">강철비2: 정상회담</a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
             <div class="movie-item">
                <div class="mv-img">
                   <a href="#"><img src="images/ranking/no3.jpg" alt="" width="285" height="437"></a>
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="green">액션</span>
                      <span class="yell">드라마</span>
                   </div>
                   <h6><a href="/movieReview/movieSingle.do?movieCode=20193450">반도</a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
             <div class="movie-item">
                <div class="mv-img">
                   <a href="#"><img src="images/ranking/no4.jpg" alt="" width="285" height="437"></a>
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="green">애니메이션</span>
                      <span class="yell">모험</span>
                      <span class="green">가족</span>
                      <span class="blue">판타지</span>
                   </div>
                   <h6><a href="moviesingle4.html">애니멀 크래커 </a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
             <div class="movie-item">
                <div class="mv-img">
                   <a href="#"><img src="images/ranking/no5.jpg" alt="" width="285" height="437"></a>
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="green">애니메이션</span>
                   </div>
                   <h6><a href="#">빅샤크3: 젤리몬스터 대소동 </a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
            <div class="movie-item">
                <div class="mv-img">
                   <a href="#"><img src="images/ranking/no6.jpg" alt="" width="285" height="437"></a>
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="green">액션</span>
                      <span class="blue">SF</span>
                   </div>
                   <h6><a href="#">블랙아웃 : 인베이젼 어스</a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
             <div class="movie-item">
                <div class="mv-img">
                   <img src="images/ranking/no7.jpg" alt="" width="285" height="437">
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="green">판타지</span>
                      <span class="yell">모험</span>
                   </div>
                   <h6><a href="#">온워드: 단 하루의 기적</a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
             <div class="movie-item">
                <div class="mv-img">
                   <img src="images/ranking/no8.jpg" alt="" width="285" height="437">
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="yell">판타지</span>
                      <span class="green">뮤지컬</span>
                      <span class="blue">멜로/로맨스 </span>
                   </div>
                   <h6><a href="#">미녀와 야수</a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
             <div class="movie-item">
                <div class="mv-img">
                   <img src="images/ranking/no9.jpg" alt="" width="285" height="437">
                </div>
                <div class="title-in">
                   <div class="cate">
                      <span class="green">멜로/로맨스</span>
                      <span class="blue">드라마</span>
                      <span class="blue">범죄</span>
                      <span class="orange">가족</span>
                   </div>
                   <h6><a href="#">소년시절의 너</a></h6>
                   <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                </div>
             </div>
          </div> -->
       </div>
   </div>
</div> 
      <div class="buster-light">
<div class="movie-items">
   <div class="container">
      <div class="row ipad-width">
         <div class="col-md-8">
            <div class="title-hd">
               <h2>개봉예정작</h2>

            </div>
            <div class="tabs">
                <div class="tab-content">
                    <div id="tab1" class="tab active">
                        <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre1.jpg" alt="" width="185" height="284">
                                    </div> 
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in" style="font-size: 18px;">
                                       <h6><a href="#">오케이 마담</a></h6>
                                       
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre2.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">더 프린세스: 도둑 맞은 공주</a></h6>
                                       
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">엘라 벨라</a></h6>
                                       
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre4.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">반교 : 리텐션</a></h6>
                                       
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                    </div>
                    <div id="tab2" class="tab">
                       <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Interstellar</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The revenant</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The walk</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                    </div>
                    <div id="tab3" class="tab">
                       <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Interstellar</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The revenant</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The walk</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                       </div>
                       <div id="tab4" class="tab">
                       <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Interstellar</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The revenant</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The walk</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                       </div>
                </div>
            </div>
            <div class="title-hd">
               <h2>현재상영작</h2>
               
            </div>
            <div class="tabs">

                <div class="tab-content">
                    <div id="tab21" class="tab">
                        <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre1.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Interstellar</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre2.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The revenant</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/pre/pre4.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The walk</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                    </div>
                    <div id="tab22" class="tab active">
                       <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/ranking/no1.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">다만 악에서 구하소서</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/ranking/no4.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">애니멀 크래커</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/ranking/no2.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">강철비</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/ranking/no5.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner" style="display:none">

                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">빅샤크3: 젤리몬스터 대소동</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                    </div>
                    <div id="tab23" class="tab">
                       <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Interstellar</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The revenant</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The walk</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Interstellar</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The revenant</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The walk</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                       </div>
                        <div id="tab24" class="tab">
                       <div class="row">
                           <div class="slick-multiItem">
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Interstellar</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           <div class="slide-it">
                              <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The revenant</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                           </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">The walk</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="slide-it">
                                 <div class="movie-item">
                                    <div class="mv-img">
                                       <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                    </div>
                                    <div class="hvr-inner">
                                       <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                    </div>
                                    <div class="title-in">
                                       <h6><a href="#">Die hard</a></h6>
                                       <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                       </div>
                </div>
            </div>
         </div>
         <div class="col-md-4">
            <div class="sidebar">
               
               <div class="celebrities">
                  <h4 class="sb-title">Spotlight Celebrities</h4>
                  <div class="celeb-item">
                     <a href="#"><img src="images/celebrities/director1.jpeg" alt="" width="70" height="70"></a>
                     <div class="celeb-author">
                        <h6><a href="#">홍원찬</a></h6>
                        <span>감독</span>
                     </div>
                  </div>
                  <div class="celeb-item">
                     <a href="#"><img src="images/celebrities/actor1.jpeg" alt="" width="70" height="70"></a>
                     <div class="celeb-author">
                        <h6><a href="#">박정민</a></h6>
                        <span>배우</span>
                     </div>
                  </div>
                  <div class="celeb-item">
                     <a href="#"><img src="images/celebrities/actor2.jpeg" alt="" width="70" height="70"></a>
                     <div class="celeb-author">
                        <h6><a href="#">최희서</a></h6>
                        <span>배우</span>
                     </div>
                  </div>
                  <div class="celeb-item">
                     <a href="#"><img src="images/celebrities/actor3.jpeg" alt="" width="70" height="70"></a>
                     <div class="celeb-author">
                        <h6><a href="#">환정민</a></h6>
                        <span>배우</span>
                     </div>
                  </div>
                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="trailers" >
   <div class="container">
      <div class="row ipad-width">
         <div class="col-md-12">
            <div class="title-hd">
               <h2>각 지역 영화매출 분포</h2>
               
            </div>
            <div class="videos">
            
            
            
            
            
            
            
            
            
            
<div class="movie-items" style="background-color:#f2f6f8; padding:3px 2px 0 30px; font-size:33px; font-weight:bold;">
<!--    <div class="container">
      <div class="col-md-8">
   <div style="float:top; color:#727272; padding:3px 2px 0 30px; font-size:33px; font-weight:bold;"> -->
   
<br>
<br>

<table style="border:2px solid #f2f6f8;box-shadow: 0 0px 0px #f2f6f8;">	
   <tr>
      <td id="map" style="width: 150px; height: 600px;"></td>

      <td id="piechart" style="width: 150px; height: 600px;background-color:#dfdff0;" ></td>
   </tr>
   
</table>
<div id="Progress_Loading" style="width: 900px; height: 10px;">
               <!-- 로딩바 -->
               <img src="images/Progress_Loading.gif" />
            </div>

   <script>
            
            
               //https://navermaps.github.io/   /ytnimg
               var HOME_PATH = "https://navermaps.github.io/maps.js.ncp/docs", urlPrefix = HOME_PATH
                     + '/data/region', urlSuffix = '.json', regionGeoJson = [], loadCount = 0;

               var map = new naver.maps.Map(
                     document.getElementById('map'), {
                        zoom : 7,
                        mapTypeId : 'normal',
                        //36.4203004,128.317960   
                        center : new naver.maps.LatLng(36.042260, 127.030007)
                     });

               //
               /*    var circle = new naver.maps.Circle({
                      map: map,
                      center: new naver.maps.LatLng(36.4203004, 128.317960),
                      radius: 20000,
                      fillColor: 'crimson',
                      fillOpacity: 0.8
                  }); */
               naver.maps.Event.once(map, 'init_stylemap', function() {
                  for (var i = 1; i < 18; i++) {
                     var keyword = i + '';

                     if (keyword.length === 1) {
                        keyword = '0' + keyword;
                     }
                     console.log(urlPrefix + keyword + urlSuffix);

                     //https://navermaps.github.io/maps.js.ncp/docs/data/region06.json    /data/region06.json

                     $.ajax({
                        url : urlPrefix + keyword + urlSuffix, //"/prj/sido.json",
                        success : function(idx) {
                           return function(geojson) {
                              regionGeoJson[idx] = geojson;

                              loadCount++;

                              if (loadCount === 17) {
                                 startDataLayer();
                              }
                           }
                        }(i - 1)
                     });
                  }
               });

               var tooltip = $('<span style="position:relative;z-index:1000;padding:5px 10px;background-color:#fff;border:solid 2px #000;font-size:10px;pointer-events:none;display:none;"></span>');

               tooltip.appendTo(map.getPanes().floatPane);

               function startDataLayer() {
                  map.data.setStyle(function(feature) {
                     var styleOptions = {
                        fillColor : '#0066ff',
                        fillOpacity : 0,
                        strokeColor : '#0066ff',
                        strokeWeight : 3,
                        strokeOpacity : 0.4
                     };

                     if (feature.getProperty('focus')) {
                        styleOptions.fillOpacity = 1;//채우기 투명도
                        styleOptions.fillColor = '#0066ff';
                        styleOptions.strokeColor = '#0066ff';
                        styleOptions.strokeWeight = 0.01;//선 두께
                        styleOptions.strokeOpacity = 1;//선 투명도 
                     }

                     return styleOptions;
                  });

                  regionGeoJson.forEach(function(geojson) {
                     map.data.addGeoJson(geojson);
                  });

                  
                  var myArray = {'서울특별시': '0105001', '경기도': '0105002', 
                        '강원도': '0105003', '충청북도': '0105004', 
                        '충청남도': '0105005', '경상북도': '0105006', 
                        '경상남도': '0105007', '전라북도': '0105008', 
                        '전라남도':'0105009', '제주특별자치도': '0105010', 
                        '부산광역시': '0105011', '대구광역시': '0105012', 
                        '대전광역시': '0105013', '울산광역시': '0105014', 
                        '인천광역시': '0105015', '광주광역시': '0105016', 
                        '세종특별자치시': '0105017'
                  
                  };
                  map.data
                        .addListener(
                              'click',
                              function(e) {
                                 var feature = e.feature, regionName = feature
                                       .getProperty('area1');
                                 ;
                                 console.log(regionName);
                                 console.log(myArray[regionName]);
                                 //if (feature.getProperty('focus') !== true) {
                                 //    feature.setProperty('focus', true);
                                 //    } else {
                                 //    feature.setProperty('focus', false);
                                 //    }
                                 let today = new Date();   

                                 let year = today.getFullYear(); // 년도
                                 let month = today.getMonth() + 1;  // 월
                                 let date = today.getDate();  // 날짜
                                 let day = today.getDay();  // 요일
                                 
                                 var dateStr=year+'';
                                 if(month<10){
                                	 dateStr+='0'+month;
                                 }else{
                                	 dateStr+=month+'';
                                 }
                                 if(date<10){
                                	 dateStr+='0'+(date-1);
                                 }else{
                                	 dateStr+=(date-1)+'';
                                 }
                                 console.log("어제날짜"+dateStr);
                                 $.ajax({
                                          url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
                                          method : "GET", //"POST", "GET",  v1.9.0.이전 type
                                          contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
                                          data : "key=887aca0f3d99c664c8418d5bf128f55e&targetDt=20200811&wideAreaCd="+myArray[regionName]+"&itemPerPage=10", //***********
                                          
                                          dataType : "json", //서버로부터 오는 응답 xml, json, script, html
                                          success : function(
                                                resultObject) {
                                             drawChart(resultObject,regionName);
                                          }
                                       });//endajax

                              }); //endListener

                  map.data.addListener('mouseover', function(e) {
                     var feature = e.feature, regionName = feature
                           .getProperty('area1');

                     tooltip.css({
                        display : '',
                        left : e.offset.x,
                        top : e.offset.y
                     }).text(regionName);

                     map.data.overrideStyle(feature, {
                        fillOpacity : 0.6,
                        strokeWeight : 4,
                        strokeOpacity : 1
                     });
                  });

                  map.data.addListener('mouseout', function(e) {
                     tooltip.hide().empty();
                     map.data.revertStyle();
                  });
               }
               
               function drawChart(resultObject,regionName) {
                  

                  
                  console.log(resultObject);
                  //var obj = JSON.parse(resultObject);

                  var boxOfficeResult = resultObject.boxOfficeResult;
                  var dailyBoxOfficeList=boxOfficeResult.dailyBoxOfficeList;

                  
                  console.log(dailyBoxOfficeList);
                  /* 
                  $.each(list, function(idx, vo){});
                  var res = $.map(list, function(vo, idx){});
                  for(BoardVO vo : list) { }
                   */
                  var dataArray = [];
                   dataArray[0]=['region','어제 관객수']
                  $.map(dailyBoxOfficeList,   function(kkk,i) {
                        console.log(kkk.audiCnt);
                        console.log(kkk.movieNm);
                        dataArray[i+1]=[kkk.movieNm,parseInt(kkk.audiCnt)]
                        });
                  
                  
                  console.log(dataArray);
                  var data = google.visualization.arrayToDataTable(dataArray);

                  var options = {
                     title : regionName+'영화별 관객수 비율',
                     titleTextStyle : {
                        color:"#363636",
                        fontSize: 20,
                        bold: true
                     },
                  tooltip:{
                     textStyle:{
                        color: '#636369'
                     }
                     
                  },
                  legend:{
                     textStyle:{
                        color: '#636369'
                     }
                  },
                  
                     backgroundColor : '',
                     legend : {position: 'top',
                    	 alignment:'center',
                    	 maxLines:2},//right top bottom labeled
                     chartArea : {

                         left:20,top:100,width:'100%',height:'65%',
                         backgroundColor : ''
                      }

                  };

                  var chart = new google.visualization.PieChart(document
                        .getElementById('piechart'));

                  chart.draw(data, options);
               }
            </script>



<!--     </div>
    
   </div>-->
</div>
            
            
            
            
            
            
            
            
            
            
            
            
                
               
            </div>   
         </div>
      </div>
   </div>
</div>
<!-- latest new v1 section-->

<!--end of latest new v1 section-->
      </div>
<!-- footer section-->
<footer class="ht-footer">
   <div class="container">
      
   </div>
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
</body>

<!-- index_light16:29-->
</html>