package web;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
public class BBSItem {
    private int seqNo;         // ����
    private String title;      // ����
    private String content;    // ����
    private String writer;     // �ۼ���
    private Date date;         // ��������
    private Time time;         // ����ð�
    public BBSItem() {
    }
    public void setSeqNo(int seqNo) {
        this.seqNo = seqNo;
    }
    public String getTitle() {
         return toUnicode(title);
    }
    public String getContent() {
         return toUnicode(content);
    }
    public String getWriter() {
         return toUnicode(writer);
    }
    public Date getDate() {
         return date;
    }
    public Time getTime() {
         return time;
    }
    public void readDB() throws ServletException {      // �����ͺ��̽��κ��� �Խñ��� �д� �޼���
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("org.apache.commons.dbcp.PoolingDriver");
            conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
            if (conn == null)
                throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from bbs where seqNo = '" + seqNo + "';");
            if (rs.next()) {
                title = rs.getString("title");         // ����
                content = rs.getString("content");     // ����
                writer = rs.getString("writer");       // �ۼ���
                date = rs.getDate("wdate");            // ��������
                time = rs.getTime("wtime");            // ����ð�
            }
        }
        catch (Exception e) {
            throw new ServletException(e);
        }
        finally {
            try { 
                stmt.close();
            } 
            catch (Exception ignored) {
            }
            try { 
                conn.close();
            } 
            catch (Exception ignored) {
            }
        }
    }
    private String toUnicode(String str) {    // ISO-8859-1 ���ڿ��� Unicode ���ڿ��� �ٲٴ� �޼���
        if (str == null)
            return null;
        try {
            byte[] b = str.getBytes("ISO-8859-1");
            return new String(b);
        }
        catch (java.io.UnsupportedEncodingException uee) {
            System.out.println(uee.getMessage());
            return null;
        }
    }
}
