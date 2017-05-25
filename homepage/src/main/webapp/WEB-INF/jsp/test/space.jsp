<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="org.apache.commons.logging.Log"%>
<%@page import="org.apache.commons.logging.LogFactory"%>    
<%@page import="org.apache.lucene.analysis.kr.morph.WordSpaceAnalyzer"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.lucene.analysis.kr.morph.AnalysisOutput"%>
<%
	request.setCharacterEncoding("EUC-KR");
	Log log = LogFactory.getLog("org.apache.lucene.analysis.kr");
    String question = request.getParameter("input");
    if(question==null) question = "";    
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE>�ڹ� �ѱ����¼Һм��� ����</TITLE>
	<STYLE type="text/css">
	<!--
	td {  font-size: 10pt}
	select {  font-size: 10pt}
	textarea {  font-size: 10pt}
	.benhur1 {  font-size: 12pt}
	a:visited {  text-decoration: none; color: #000000}
	a:link {  text-decoration: none; color: #000000}
	a:hover {  color: #000000; text-decoration: underline}

.outer {
	color:#666666;
	background-color:#ffffff;
	font-family: ����, Arial, Tahoma;
	border-bottom: #4a93dd 1px solid;
}
.title {
	color:#666666;
	background-color:#ffffff;
	font-family: ����, Arial, Tahoma;
	FONT-SIZE: 12px;
	height: 18px; margin-bottom:0px;
	padding: 2px 0 2px 10px;
}
.inner {
	color:#666666;
	background-color:#ffffff;
	font-family: ����, Arial, Tahoma;
	FONT-SIZE: 12px;
	height: 18px; margin-bottom:0px;
	padding: 2px 0 2px 10px;
	margin: 0 0 0 50px;
}
	-->
	</STYLE>
 </HEAD>

 <BODY>
 <table width="800" align="center">
  <tr>
  <td>
	<a href="index.jsp" class="menu">���¼Һм�</a>  | <a href="cnouns.jsp" class="menu">���ո�� ����</a>  | <a href="space.jsp" class="menu">�ڵ��������</a> | <a href="keyword.jsp" class="menu">���ξ�����</a>
	<hr/>
  </td>
  </tr>
  </table>
 <form method="post" name="morph">
  <table width="800" align="center">
  <tr>
  <td>
		<div style="font-size:18pt;text-align:center">�ڵ� ������� ����</div>
		<div style="font-size:10pt;text-align:center;color:blue">�� �ý����� �ڵ� ������� �����Դϴ�</div>

  </td>
  </tr>
  <tr>
  <td>
  <div style="text-align:center">
  <textarea name="input" rows="7" cols="100"></textarea>
  <div>
  <div style="text-align:right;margin-right:35px">
  	<input type="submit" name="action" value="�����ϱ�">
  </div>
  </td>
  </tr>
  <tr>
  <td style="background-color:#BBBBEF">
  <div style="font-weight:bold;margin-top:20px;">�Է� : </div>
  <div style="padding-left:40px;margin-top:5px"><%=question %></div>
  </td>
  </tr>
  <tr>
  <td>
  <div style="font-weight:bold;margin-top:20px">��� : </div>
  <hr>
<%
try {
	if(!"".equals(question)) {
		log.info(question);
		long start = System.currentTimeMillis();
		WordSpaceAnalyzer wsAnal = new WordSpaceAnalyzer();
		
		List<AnalysisOutput> list  = wsAnal.analyze(question);
		out.println("<div class='outer'>");
		for(int i=0;i<list.size();i++) {
			if(i!=0) out.println("/");
			out.print(list.get(i).getSource()+" ");
		}
		out.println("</div>");
	//	out.println("<div class='outer' style='margin-top:20px'></div>");				
	//	for(AnalysisOutput o : list) {
	//		out.println("<div class='outer'>");			
	//		out.println("<div class='title'>");				
	//		out.println(o.getSource());
	//		out.println("</div>");			
	//		out.println("<div class='inner'>");				
	//		out.println(o.toString()+"->");
	//		for(int i=0;i<o.getCNounList().size();i++){
	//			out.println(o.getCNounList().get(i).getWord()+"/");
	//		}
	//		out.println("<"+o.getScore()+">");					
	//		out.println("</div>");	
	//		out.println("</div>");	
	//	}

		
		out.println("<div>"+(System.currentTimeMillis()-start)+"ms</div>");
	}
} catch(Exception e) {
	out.println(e.getMessage());
	e.printStackTrace();
}
%>	
  </td>
  </tr>
  </table>
</form>  
 </BODY>
</HTML>