<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!--client ID=t8opu2q577;
	client Secret=1NLuFFLrhB6b7yBXDtvFFeysZ3EfqqrAUmAmG4jz  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>간단한 지도 표시하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=t8opu2q577"></script>
	 <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAYm6qkHbC2yhzEnlNCUuz0UhRiG2SMbs&libraries=&v=weekly"
      defer
    ></script>
</head>
<body>
	<div id="map" style="width: 60%; height: 450px;"></div>

	<script>
		var HOME_PATH = "https://navermaps.github.io/maps.js.ncp/docs" , urlPrefix = HOME_PATH
				+ '/data/region', urlSuffix = '.json', regionGeoJson = [], loadCount = 0;

		var map = new naver.maps.Map(document.getElementById('map'), {
			zoom : 6,
			mapTypeId : 'normal',
			center : new naver.maps.LatLng(36.4203004, 128.317960)
		});
		naver.maps.Event.once(map, 'init_stylemap', function() {
			for (var i = 1; i < 18; i++) {
				var keyword = i + '';

				if (keyword.length === 1) {
					keyword = '0' + keyword;
				}
	console.log(urlPrefix + keyword + urlSuffix);
	
				$.ajax({
					url :urlPrefix + keyword + urlSuffix,   
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


			map.data.addListener('mouseover', function(e) {
				var feature = e.feature, 
					regionName = feature.getProperty('area1');


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
		
	</script>
</body>
</html>