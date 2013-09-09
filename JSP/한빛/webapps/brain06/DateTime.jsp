<%@page contentType="text/html; charset=euc-kr" import="java.io.*, java.util.*" %>
<%!
    private PrintWriter logFile;
    public void jspInit() {
        String filename = "c:\\data\\datetime_log.txt";
        try {
            logFile = new PrintWriter(new FileWriter(filename, true));
        }
        catch (IOException e) {
            System.out.printf("%TT - %s ������ �� �� �����ϴ�. %n", new GregorianCalendar(), filename);
        }
    }
%>
<HTML>
    <HEAD><TITLE>������ ��¥�� �ð�</TITLE></HEAD>
    <BODY>
    <%
        GregorianCalendar now = new GregorianCalendar();
        String date = String.format("���� ��¥: %TY�� %Tm�� %Te��", now, now, now);
        String time = String.format("���� �ð�: %TI�� %Tm�� %TS��", now, now, now);
        out.println(date + "<BR>");
        out.println(time + "<BR>");
        if (logFile != null)
            logFile.printf("%TF %TT�� ȣ��Ǿ����ϴ�.%n", now, now);
    %>
    </BODY>
</HTML>      
<%!
    public void jspDestroy() {
        if (logFile != null)
            logFile.close();
    }
%>
