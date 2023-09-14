// Bussiness class
public class FirstClass {
	integer num1, num2;
    public void ip(integer x, integer y) {
        num1 = x;
        num2 = y;
    }
    
    public void op(){
        system.debug('first: ' +  num1);
        system.debug('second: ' +  num2);
    }
}