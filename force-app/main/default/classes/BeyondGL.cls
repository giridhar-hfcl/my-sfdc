public class BeyondGL implements Database.Batchable<Employee__c>, Database.Stateful {
    string name = 'Giri';
    
    public Iterable<Employee__c> start(Database.BatchableContext bc) {
        system.debug('in start: ' + name);
        name = 'Giridhar';
        
        return [SELECT salary__c from Employee__c];
    }
    
    public void execute(Database.BatchableContext bc, List<employee__c> emps) {
        system.debug('in execute: ' + name);
        name = 'Giridhar Talla';
        
        for(Employee__c emp : emps) {
            emp.salary__c += 10000;
        }
        update emps;
    }
    
    public void finish(Database.BatchableContext bc) {
        system.debug('in finish: ' + name);
        // code to send email alerts
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[]{'giridhar.talla@outlook.com', 'giridhar.talla@herofincorp.com'};
        mail.setToAddresses(toAddress);
        mail.setSubject('hey master! 👋 - from salesforce batch apex');
        mail.setPlainTextBody('I am done with the job! gimme reward 😘');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }

}