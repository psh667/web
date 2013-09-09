package utils;
import java.io.*; 

public class JDU{ 

public String encoding(String str) {
       String strTmp = null;
       try {
           strTmp = new String(str.getBytes("UTF-8"), "8859_1");
       }
       catch(Exception e) {}
       return strTmp;
    }

 public String encoding2(String str) {
       String strTmp = null;
       try {
           strTmp = new String(str.getBytes("8859_1"), "MS949");
       }
       catch(Exception e) {}
       return strTmp;
    }


}