@IsTest
public class AriExceptionTest {
    public static testmethod void main() {
        integer num1 = 10, num2 = 0, res;
        try {
            res = num1 / num2;
            system.debug('The result is ' + res);
        } catch(exception e) {
            system.debug('Hey! we cannot divide any number by 0');
        }
    }
}