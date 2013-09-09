<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="ch14.Thumbnail"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%
String realFolder = "";//�� ���ø����̼ǻ��� ���� ���

//������ ���ε�Ǵ� ������ �����Ѵ�.
String saveFolder = "thumbnail";
String encType = "euc-kr"; //���ڵ�Ÿ��
int maxSize = 5*1024*1024;  //�ִ� ���ε� ����ũ�� 5Mb

ServletContext context = getServletContext();
//���� jsp�������� �� ���ø����̼ǻ��� ���� ��θ� ���Ѵ�
realFolder = context.getRealPath(saveFolder);  

try
{
   MultipartRequest multi = null;
   
   //������ ����� ������Ʈ�� �����ϰ� ������ �����Ѵ�.
   //������ ���ϸ��� ������ �ִ� ��ü, �������� ������,�ִ� ���ε�� ����ũ��, �����ڵ�, �⺻ ���� ����
   multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
   
   Enumeration files = multi.getFileNames();
   int zoom=5;
   //���� ������ �ִٸ�
   while(files.hasMoreElements()){
    //input �±��� �Ӽ��� file�� �±��� name �Ӽ��� :�Ķ�����̸�
      String name = (String)files.nextElement();
   
   //������ ����� ���� �̸�
      String filename = multi.getFilesystemName(name);
   
      String orgFileName= realFolder+"\\"+filename;
      String thumbFileName= realFolder+"\\small"+filename;
	  Thumbnail.createImage(orgFileName, thumbFileName, zoom);
	  %>

	  �������� �����ι� ���ϸ�: <%=orgFileName%><br>
	   <img src="<%=orgFileName%>" border="0"><br><br><br>
	   "����� �̹��� �����ι� ���ϸ�: "<%=thumbFileName%><br>
       <img src="<%=thumbFileName%>" border="0">

<%
      }
}catch(IOException ioe){
 ioe.printStackTrace();
}catch(Exception ex){
 ex.printStackTrace();
}
%>

