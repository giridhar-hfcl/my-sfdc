@IsTest
public class CwClassTest {
    public static testmethod void main() {
        CwClass o1 = new CwClass();
        CwClass.InCwClass o2 = new CwClass.InCwClass();
        
        CwClass.fn1();
        o1.fn2();
        
        o2.fn3();
        o2.fn4();
    }
}