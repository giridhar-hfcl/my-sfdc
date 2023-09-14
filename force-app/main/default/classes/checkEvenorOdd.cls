public class checkEvenorOdd {
    integer num;
        
    public void setValues(integer a) {
        num = a;
    }
    
    public void checkEvenorOdd() {
        if(Math.mod(num, 2) == 0) {
            system.debug('It is even');
        } else {
            system.debug('It is odd');
        }
    } 
}