<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Itshoe!</title>
</head>
</head>
<body bgcolor=d4f3ef>

<section data-role="page">

	<!-- 1. ��� -->
	<header >
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content">
		<br><br>
		<table border='0'  width="900"  align="center" >
		   <tr align = "left" height="250" >
			<td align="center"><img src="../shoes/a.png" hspace=20 ><br><br><br>
			<p style="font-family:'�����ٸ����'; font-size:30px;" >
			 &nbsp;&nbsp;&nbsp;NIKE ������ ���Ǹ���<br> &nbsp;&nbsp;&nbsp;������2 x Stussy</p>
			<p style="font-family:'�����ٸ����'; font-size:20px;" >
			 &nbsp;&nbsp;&nbsp;��ǰ�ڵ� : CQ5486-200<br>
			 &nbsp;&nbsp;&nbsp;���� : FOSSIL/BLACK-FOSSIL<br>
			 &nbsp;&nbsp;&nbsp;�߸Ű� : 189,000<br>
			 &nbsp;&nbsp;&nbsp;�߸��� : 2020-03-27<br>
			 &nbsp;&nbsp;&nbsp;�߸Ź�� : ��ο�(��÷)</p>

			</td>
			<td align="center">
			<p align= "center" style="font-family:'�����ٸ����'; font-size:30px;"> ��ǰ����</p>
			<p style="font-family:'�����ٸ����'; font-size:20px;">Nike�� ��Ʈ���귣�� ������(Stussy)�� �����Ͽ� 2003�⿡ ���� <br>
			 ������ ���Ǹ��� �������� ���̽��� �ݶ󺸷��̼��� �Ź�</p>
			<p style="font-family:'�����ٸ����'; font-size:20px;" align="center"> ������ : 
			  <select name='size' >
    				<option value='' selected >-- ������ ���� --</option>
  				  <option value='210'>210</option>
    				  <option value='215'>215</option>
  				  <option value='220'>220</option>
				  <option value='225'>225</option>
    				  <option value='230'>230</option>
  				  <option value='235'>235</option>
				  <option value='240'>240</option>
    				  <option value='245'>245</option>
  				  <option value='250'>250</option>
				  <option value='255'>255</option>
    				  <option value='260'>260</option>
  				  <option value='265'>265</option>
				  <option value='270'>270</option>
    				  <option value='275'>275</option>
  				  <option value='280'>280</option>
				  <option value='285'>285</option>
    				  <option value='290'>290</option>
  				  <option value='295'>295</option>
  				  <option value='300'>300</option>
			  </select>
			</p>
			<p align= "center">
			<script type="text/javascript">
			function press(){
				alert("�̱��� ����Դϴ�.");
			}
			</script>
			
			<img src="../shoes/buy.png" width="110" height="60" id="buy" onClick="press();">
			<img src="../shoes/sell.png" width="110" height="60" id="sell" onClick="press();">
			</p>
			<p style="font-family:'�����ٸ����'; font-size:30px;" align="center">���� ���� : 650,000</p>
			<p style="font-family:'�����ٸ����'; font-size:20px;">������ �� : �ݻ����� �۰ԽŴ°��� ��õ!</p>
			</td>
			</tr>
 		  <tr >
		   <td colspan="2"> <img src = "./banner.png"> </td>
		   </tr>

		</table>
	
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" align="center" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>