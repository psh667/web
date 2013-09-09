package web;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
public class BooksInfo {
    private ArrayList<String> codeList = new ArrayList<String>();     // ��ǰ�ڵ�
    private ArrayList<String> titleList = new ArrayList<String>();    // ����
    private ArrayList<String> writerList = new ArrayList<String>();   // ����
    private ArrayList<Integer> priceList = new ArrayList<Integer>();  // ����
    private boolean lastPage = false;                                 // å ���� ����� ������ ���������� ����
    public BooksInfo() {
    }
    public void setCode(int index, String code) {
        this.codeList.add(index, code);
    }
    public void setTitle(int index, String title) {
        this.titleList.add(index, title);
    }
    public void setWriter(int index, String writer) {
        this.writerList.add(index, writer);
    }
    public void setPrice(int index, Integer price) {
        this.priceList.add(index, price);
    }
    public void setLastPage(boolean lastPage) {
        this.lastPage = lastPage;
    }
    public String[] getCode() {
         return codeList.toArray(new String[codeList.size()]);
    }
    public String[] getTitle() {
         return titleList.toArray(new String[titleList.size()]);
    }
    public String[] getWriter() {
         return writerList.toArray(new String[writerList.size()]);
    }
    public Integer[] getPrice() {
         return priceList.toArray(new Integer[priceList.size()]);
    }
    public boolean isLastPage() {
         return lastPage;
    }
    public int getSize() {        // å ������ ���� �����ϴ� �޼���
         return codeList.size();
    }
}
