package web;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class BBSListServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String strUpperSeqNo = request.getParameter("LAST_SEQ_NO");
        int upperSeqNo;
        if (strUpperSeqNo == null)
            upperSeqNo = Integer.MAX_VALUE;
        else
            upperSeqNo = Integer.parseInt(strUpperSeqNo);
        BBSList list = readDB(upperSeqNo);
        request.setAttribute("BBS_LIST", list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WebTemplate.jsp?BODY_PATH=BBSListView.jsp");
        dispatcher.forward(request, response); 
    }
    private BBSList readDB(int upperSeqNo) throws ServletException {     // 데이터베이스로부터 게시글 목록을 읽는 메서드
        BBSList list = new BBSList();
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("org.apache.commons.dbcp.PoolingDriver");
            conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
            if (conn == null)
                throw new Exception("데이터베이스에 연결할 수 없습니다.");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from bbs where seqNo < " + upperSeqNo + " order by seqno desc;");
            for (int cnt = 0; cnt < 5; cnt++) {
                if (!rs.next())
                    break;
                list.setSeqNo(cnt, rs.getInt("seqNo"));
                list.setTitle(cnt, toUnicode(rs.getString("title")));
                list.setWriter(cnt, toUnicode(rs.getString("writer")));
                list.setDate(cnt, rs.getDate("wdate"));
                list.setTime(cnt, rs.getTime("wtime"));
            }
            if (!rs.next())
                list.setLastPage(true);
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
        return list;
    }
    private String toUnicode(String str) {    // ISO-8859-1 문자열을 Unicode 문자열로 바꾸는 메서드
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
