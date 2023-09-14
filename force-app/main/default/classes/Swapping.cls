public class Swapping {
    integer a, b;
    
    public void setValues(integer x, integer y) {
        a = x;
        b = y;
    }
    
    public void swap() {
        integer temp = a;
        a = b;
        b = temp;
    }
    
    public void getValues() {
        system.debug('a: ' + a);
        system.debug('b: ' + b);
    }

}