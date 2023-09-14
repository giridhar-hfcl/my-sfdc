@IsTest
public class BankAccTest {
    public static testmethod void main() {
        BankAcc cus1 = new BankAcc();
        cus1.setValues(101, 10000, 'Ram');
        cus1.deposit(1000);
        cus1.withdraw(100);
        cus1.getValues();
        BankAcc.getCount();
        
        BankAcc cus2 = new BankAcc();
        cus2.setValues(102, 30000, 'Raj');
        cus2.deposit(1000);
        cus2.withdraw(100);
        cus2.getValues();
        BankAcc.getCount();
        
        BankAcc cus3 = new BankAcc();
        cus3.setValues(103, 20000, 'Sam');
        cus3.deposit(1000);
        cus3.withdraw(100);
        cus3.getValues();
        BankAcc.getCount();
    }
}