package web;
import java.util.LinkedList;
public class Cart {
    private LinkedList<String> codeList = new LinkedList<String>();        // ��ǰ�ڵ�
    private LinkedList<Integer> numberList = new LinkedList<Integer>();    // ����
    public void addItem(String code, int num) {                // ��ٱ��Ͽ� å ������ �߰��ϴ� �޼���
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
    public int getSize() {        // ��ٱ��Ͽ� �ִ� �׸��� ���� �����ϴ� �޼���
         return codeList.size();
    }
}
