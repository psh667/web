package mall;
public class ClothingInfo extends ProductInfo {
    private char size;         // ������ (L/M/S)
    private String color;      // ����
    public void setSize(char size) {
        this.size = size;
    }
    public void setColor(String color) {
        this.color = color;
    }
    public char getSize() {
        return size;
    }
    public String getColor() {
        return color;
    }
}
