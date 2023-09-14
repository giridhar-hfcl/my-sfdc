@IsTest
public class ExceptionClass {
    public static testmethod void main() {
        integer num1, num2, res1, res2;
        num1 = 10;
        num2 = 0;        
        try {
            res1 = num1 + num2;
            res2 = res1 / num2;
        } catch(NullPointerException e) {
            system.debug('sorry, both nulls!');
        } catch(MathException f) {
            system.debug('sorry divide by 0');
        } catch(exception e) {
            system.debug('unknown exception');
        }
    }
}