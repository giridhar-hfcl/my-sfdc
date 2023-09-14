// Test class
@IsTest
public class FirstClassTest {
    public static void sum(integer a, integer b){
        system.debug('sum: ' + (a+b));
    }
    
    public static testmethod void main() {
        FirstClass obj = new FirstClass();
        obj.ip(1, 2);
        obj.op();
        sum(1, 2);
    }
}