public class AlarmClass implements Schedulable {
    public void execute(SchedulableContext sc) {
        Employee__c emp = new Employee__c();
        emp.ename__c = 'Pran';
        emp.Salary__c = 100000;
        emp.Dept_no__c = 20;
        emp.Designation__c = 'Man';
        Insert emp;
    }
}