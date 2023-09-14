public class BankAcc {
    integer ac_no, ac_bal;
    string ac_name;
    static integer count = 0;
    
    public BankAcc() {
        ac_no = 0;
        ac_bal = 0;
        ac_name = 'No name';
        count++;
    }
    
    public void setValues(integer a, integer b, string c) {
        ac_no = a;
        ac_bal = b;
        ac_name = c;
    }
    
    public void getValues() {
        system.debug('the Acc: ' + ac_no + ', belonging to: ' + ac_name + ', has rupees: ' + ac_bal);
    }
    
    public void deposit(integer a) {
        ac_bal = ac_bal + a;
    }
        
    public void withdraw(integer a) {
        ac_bal = ac_bal - a;
    }
    
    public void balance() {
        system.debug('balance: ' + ac_bal);
    }
    
    public static void getCount() {
        system.debug('no of customers visited: ' + count);
    }
}