package mall;
public class ProductInfo {
    private String code;     // ��ǰ�ڵ�
    private String name;     // ��ǰ��
    private int price;       // ����
    public void setCode(String code) {
        this.code = code;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public String getCode() {
        return code;
    }
    public String getName() {
        return name;
    }
    public int getPrice() {
        return price;
    }
}
