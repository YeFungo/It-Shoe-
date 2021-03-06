<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../include/jQueryMobile.inc" %>

<!----- jqPlot 라이브러리 사용: 시작 ----->
<!-- CSS 기본 라이브러리 -->
<link class="include" rel="stylesheet" type="text/css" href="../jqplot/jquery.jqplot.min.css" />
<!-- 자바스크립트 기본 라이브러리 -->
<script type="text/javascript" src="../jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="../jqplot/examples/syntaxhighlighter/scripts/shCore.min.js"></script>
<script type="text/javascript" src="../jqplot/examples/syntaxhighlighter/scripts/shBrushJScript.min.js"></script>
<script type="text/javascript" src="../jqplot/examples/syntaxhighlighter/scripts/shBrushXml.min.js"></script>
<!-- 카테고리 자바스크립트 라이브러리 -->
<script type="text/javascript" src="../jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<!-- x, y축 라벨 --> 
<script type="text/javascript" src="../jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript" src="../jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<!-- 바 차트 자바스크립트 라이브러리 -->
<script type="text/javascript" src="../jqplot/plugins/jqplot.barRenderer.min.js"></script>
<!-- 포인트 라벨 자바스크립트 라이브러리 -->
<script type="text/javascript" src="../jqplot/plugins/jqplot.pointLabels.min.js"></script>
<!----- jqPlot 라이브러리 사용: 끝 ----->

<script type="text/javascript">
$(document).ready(function(){

	<%
	// 회원 관련 객체 
	String member_ID   = "";
	String member_name = "";
	String pswd     = "";
	String gender   = "";
	String birthday = "";
	String image    = "";
	String date_joined = ""; 
	// DB 관련 객체 
	Connection        conn  = null;
	PreparedStatement pstmt = null;
	ResultSet         rs    = null;
	String            sql   = "";
	String            rst   = "success";
	String            msg   = "";
	%>	

	<%
	try {
	%>
		<!-- DB Open -->
		<%@ include file="../include/dbOpen.inc" %>
		
		// x축의 값: 시작 
		var x = [
		
		<%
		// 관심분야명 갯수  
		sql = "select count(*) as cnt " + 
			  " from 관심분야 "; 
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		int cnt_interest = rs.getInt("cnt");
		
		String[] interest = new String[cnt_interest];
		
		// 관심분야명 추출  
		sql = "select 관심분야명 " + 
			  " from 관심분야 " +
			  "order by 관심분야명 "; 
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		int i=0;
		while(rs.next()) {
		    interest[i] = rs.getString("관심분야명");
			%>
			
			'<%= interest[i] %>', 
			
			<%
			i++;
		}
		%>
		
		];
		// x축의 값: 끝 
		
		// x축에 대응하는 y값(데이터 시리즈): 시작 
		var s1 = [
		
		<%
		int cnt_max = 0;
		
		for (int j=0; j<interest.length; j++) {
		%>
		
			<%
			// 관심분야명에 해당하는 인원 수 추출  
			sql = "select count(*) as cnt " + 
				  "  from 회원관심분야 " +
				  " where 관심분야명 = ? "; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, interest[j]);
			rs = pstmt.executeQuery();
			rs.next();
			int cnt_member = rs.getInt("cnt");
			
			if (cnt_max < cnt_member)
			    cnt_max = cnt_member;
			%>
		
			<%= cnt_member %>, 
		
		<%
		} // for (97행)
		
		// y축의 최대값을 cnt_max와 가장 가까운 10의 배수로 설정
        int y_max = ((cnt_max + 10)/10) * 10;		
		%>
		
		];
		// x축에 대응하는 y값(데이터 시리즈): 끝 
     
		// id가 chart1인 영역에 y값들을 차트로 출력
		var plot1 = $.jqplot('chart1', [s1], {
			seriesDefaults:{
				// 바 차트로 그리기 
				renderer:$.jqplot.BarRenderer,
				// 데이터 라벨 
				pointLabels: {
					// 라벨 출력
					show: true, 
					// 라벨 위치 (데이터 좌상단)
					location: 'e'
				}, 
				// 차트를 수평으로 출력 
				rendererOptions: {
					barDirection: 'horizontal'
				}
			},	
			
			// x, y축 설정	
			axes: {
				// x축 (차트가 수평출력이기 때문에 y측으로 표시됨)
				xaxis: {
					// x축 라벨 출력
					label:'인원 수(명)',
					// x축 취대값
					max:<%= y_max %>
				},
				// y축 (차트가 수평출력이기 때문에 x측으로 표시됨)
				yaxis: {
					// y축에 데이터 시리즈를 하나의 카테고리로 적용 
					renderer: $.jqplot.CategoryAxisRenderer,
					// y축에 x값 설정
					ticks: x, 				
					// y축 라벨 출력
					label:'관심분야',
					// y축 방향에 따른 라벨 출력
					labelRenderer: $.jqplot.CanvasAxisLabelRenderer
				}
			}
		});
	
	<%			
	} catch(SQLException e) {
		rst = "시스템에러";
		msg = e.getMessage();
	} finally {
		if(rs != null) 
			rs.close();
		if(pstmt != null) 
			pstmt.close();
		if(conn != null) 
			conn.close();
	} // try (51행)
	%>
});
</script>

</head>
<body>

<!-- 페이지 영역 지정 -->
<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<%@ include file="../include/header.inc" %>
		<%@ include file="../include/menu.inc" %>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
        <!-- 차트 영역 -->	
        <div id="chart1" style="width:100%; height:400px;"></div>
	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>