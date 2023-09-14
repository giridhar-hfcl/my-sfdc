public class SearchAccount {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAllAccounts(String name){
        try {
            String accName = '%' + name + '%';
            return [SELECT id, name, Phone from Account where name like :accName];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}