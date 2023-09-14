@IsTest
public class SwappingTest {
    public static testmethod void main() {
        Swapping s = new Swapping();
        s.setValues(2, 8);
        s.getValues();
        s.swap();
        s.getValues();
    }
}