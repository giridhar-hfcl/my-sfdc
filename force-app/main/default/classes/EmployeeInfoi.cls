public class EmployeeInfoi {
    
    @auraEnabled
    public static void insertDetails(string eName, string eAddress, string eDept, string eSalary) {
        Employee__c emp = new Employee__c();
        emp.ename__c = eName;
        emp.address__c = eAddress;
        emp.Dept_no__c = Integer.valueof(eDept);
        emp.Salary__c = Decimal.valueof(eSalary);
        
        insert emp;
    }

}