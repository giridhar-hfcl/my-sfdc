@IsTest
public class RestoreRecords {
    public static testmethod void main() {
        List<Employee__c> deletedRecords = new List<Employee__c>();
        deletedRecords = [SELECT Id FROM Employee__c ALL ROWS]; 
        undelete deletedRecords;
    }
}