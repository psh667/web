package web;
import java.util.LinkedList;
public class Cart {
    private LinkedList<String> codeList = new LinkedList<String>();        // 상품코드
    private LinkedList<Integer> numberList = new LinkedList<Integer>();    // 수량
    public void addItem(String code, int num) {                // 장바구니에 책 정보를 추가하는 메서드
        for (int cnt = 0; cnt < codeList.size(); cnt++) {
            if (codeList.get(cnt).equals(code)) {
                numberList.set(cnt, numberList.get(cnt) + 1);
                return;
            }
        }
        codeList.add(code);
        numberList.add(num);
    }
    public String getCode(int index) {
        return codeList.get(index);
    }
    public int getNumber(int index) {
        return numberList.get(index);
    }
    public int getSize() {        // 장바구니에 있는 항목의 수를 리턴하는 메서드
         return codeList.size();
    }
}
