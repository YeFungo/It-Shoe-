<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Itshoe!</title>
</head>
</head>
<body>

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
			<td align="center"><img src="../shoes/b.png" hspace=20 ><br><br><br>
			<p style="font-family:'�����ٸ����'; font-size:30px;" >
			 &nbsp;&nbsp;&nbsp;NIKE ����ƽ� 270<br> &nbsp;&nbsp;&nbsp;����Ʈ X Travis Scott</p>
			<p style="font-family:'�����ٸ����'; font-size:20px;" >
			 &nbsp;&nbsp;&nbsp;��ǰ�ڵ� : CT2864-200<br>
			 &nbsp;&nbsp;&nbsp;���� : LIGHT CREAM/DARK HAZEL<br>
			 &nbsp;&nbsp;&nbsp;�߸Ű� : 239,000<br>
			 &nbsp;&nbsp;&nbsp;�߸��� : 2020-05-29<br>
			 &nbsp;&nbsp;&nbsp;�߸Ź�� : ��ο�(��÷)</p>

			</td>
			<td align="center">
			<p align= "center" style="font-family:'�����ٸ����'; font-size:30px;"> ��ǰ����</p>
			<p style="font-family:'�����ٸ����'; font-size:20px;">Nike�� �̱��� ������ Ʈ���� ��ı(Travis Scott)�� �����Ͽ�
			<br> ����ƽ� 270 ����Ʈ��ǰ�� ���̽��� �ݶ󺸷��̼��� �Ź�</p>
			<p style="font-family:'�����ٸ����'; font-size:20px;" align="center"> ������ : 
              <!-- select��� �Ӽ��� �̿��� ����� �����Ҽ��ֵ�����. -->
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
			<!--funtion�� �̿��Ͽ� alert(�˾�â�� ���� ��)�� �̿��� �̱�������ΰ��� ǥ����-->
			<script type="text/javascript">
			function press(){
				alert("�̱��� ����Դϴ�.");
			}
			</script>
			<img src="../shoes/buy.png" width="110" height="60" id="buy" onClick="press();">
		
			<img src="../shoes/sell.png" width="110" height="60" id="sell" onClick="press();">
		
			</p>
			<p style="font-family:'�����ٸ����'; font-size:30px;" align="center">���� ���� : 1,200,000</p><br>
			<p style="font-family:'�����ٸ����'; font-size:20px;">������ �� : �ϹݽŹ߰� ������ ������� �Ŵ°��� ��õ!</p>
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