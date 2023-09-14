public class Opeartions {
    integer num1, num2, res;
    
    // 1. create
    public Opeartions(){
        num1 = 0;
        num2 = 0;
    }
    
    // 2. input
    public void setValues(integer a, integer b) {
        num1 = a;
        num2 = b;
    }
    
    // 3. process
    public void add() {
        res = num1 + num2;
    }
    
    // 4. output
    public void getValues() {
        system.debug(num1);
        system.debug(num2);
        system.debug(res);
    }
    

}