<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!-- 
AIzaSyAw5bpQF-Nyr305E5mnyou25qSQz6KjLo4
 -->
<!DOCTYPE html>
<html>
<head>
<title>Lat/Lng Object Literal</title>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!DOCTYPE html>
<html> 
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>google map API TEST</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <style>
        body {
            overflow: hidden;
        }
        div#map {
            width: 100vw; height: 100vh;
        }
        div.wrap {
            width: 200px;
        }
        div.text-box {
            text-align: center;
        }
        h4 {
            margin: 10px auto 0;
        }
        div.img-box {
            max-height: 100px;
            overflow: hidden;
        }
        img {
            width: 150px;
            margin: -20px auto 0;
        }
        a {
            text-decoration: none;
            color: #000;
        }
        
        
        /* 확대/축소 등 구글 지도의 기본 UI 감추기 */
        .gmnoprint, .gm-control-active.gm-fullscreen-control {
            display: none;
        }
        
    </style>
</head>
 
<body>
    <div id="map"></div>
 
    <script type="text/javascript">
        function initMap() {
 
            //지도 스타일
            var map = new google.maps.Map(document.getElementById('map'), {
                
                //처음 중심 좌표
                center: {
                    lat: 37.587624,
                    lng: 126.976020
                },
                
                //처음 줌 값. 숫자가 작을수록 낮은 배율
                zoom: 13
            });
 
            //마커 정보
            var locations = [
                
                //KOTE
                ['<div class="wrap"><div class="text-box"><h4>경복궁</h4><div class="img-box"><img src="https://image.shutterstock.com/image-vector/palace-icon-outline-vector-web-260nw-1046855677.jpg"></div><a target="_blank" href="https://www.royalpalace.go.kr/"><p>홈페이지 방문하기</p></a></div>', 37.571481, 126.986700],
                
                
                //집
                ['<div class="wrap"><div class="text-box"><h4>딸기케이크</h4><div class="img-box"><img src="https://media.istockphoto.com/vectors/piece-of-cake-with-strawberries-icon-element-of-bakery-icon-premium-vector-id931551700"></div><a target="_blank" href="https://noa-xyz.tistory.com"><p>홈페이지 방문하기</p></a></div>', 37.579072, 127.001059],
                
                
                //창덕궁 마커
                ['<a target="_blank" href="https://cdg.go.kr/">창덕궁 홈페이지</a>', 37.579711, 126.991043]
                
                
                ]
 
            
            
            //마커 이미지
            var customicon = 'http://drive.google.com/uc?export=view&id=1tZgPtboj4mwBYT6cZlcY36kYaQDR2bRM'
 
            //인포윈도우
            var infowindow = new google.maps.InfoWindow();
 
            //마커 생성
            var marker, i;
            for (i = 0; i < locations.length; i++) {
                marker = new google.maps.Marker({
                    
                    //마커의 위치
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                    
                    //마커 아이콘
                    icon: customicon,
                    
                    //마커를 표시할 지도
                    map: map
                });
 
                google.maps.event.addListener(marker, 'click', (function(marker, i) {
                    return function() {
                        
                        //html로 표시될 인포 윈도우의 내용
                        infowindow.setContent(locations[i][0]);
                        
                        //인포윈도우가 표시될 위치
                        infowindow.open(map, marker);
                    }
                })(marker, i));
                
                if (marker) {
                    marker.addListener('click', function() {
                        
                        //중심 위치를 클릭된 마커의 위치로 변경
                        map.setCenter(this.getPosition());
 
                        //마커 클릭 시의 줌 변화
                        map.setZoom(14);
                    });
                }
            }
        }
    </script>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyAw5bpQF-Nyr305E5mnyou25qSQz6KjLo4&callback=initMap" type="text/javascript" async defer></script>    
</body></html>
