public class getEmployee {

    public String job { get; set; }

    public decimal dept { get; set; }

    public decimal salary { get; set; }

    public String ename { get; set; }

    public String empid { get; set; }

    public PageReference cancel() {
        return null;
    }


    public PageReference get_record() {
        Employee__c emp = new Employee__c();
        emp = [select name, ename__c, salary__c, designation__c, dept_no__c from employee__c where name like :empid];
        ename = emp.ename__c;
        salary = emp.salary__c;
        dept = emp.dept_no__c;
        job = emp.designation__c;
        return null;
    }

}