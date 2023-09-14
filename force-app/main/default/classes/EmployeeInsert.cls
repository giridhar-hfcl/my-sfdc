public class EmployeeInsert {

    public String job { get; set; }

    public integer dept { get; set; }

    public integer salary { get; set; }

    public String ename { get; set; }

    public PageReference cancel() {
        return null;
    }


    public PageReference insert_record() {
        Employee__c emp = new Employee__c();
        emp.ename__c = ename;
        emp.salary__c = salary;
        emp.dept_no__c = dept;
        emp.designation__c = job;
        insert emp;
        
       
        return null;
    }

}