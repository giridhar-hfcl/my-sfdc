@restResource(urlMapping='/myaccounts/*')
global class MyWebClass {
    
    @httpGet
    global static List<Account> getAllAccounts() {
        RestRequest req = RestContext.request;
        List<Account> acc;
        String accId = req.requestURI.subString(req.requestURI.lastindexOf('/') + 1);
        if (accId == '' || accId == 'myaccounts') {
            acc = [SELECT id, name FROM Account];
        } else {
            acc = [SELECT id, name FROM Account where Id = :accId];
        }
        return acc;
    }
    
    @httpPost
    global static void createAccount(String accName, String accPh) {
        Account acc = new Account();
        acc.name = accName;
        acc.Phone = accPh;
        insert acc;
    }
    
    @httpDelete
    global static void deleteAccountById() {
        RestRequest req = RestContext.request;
        String accId = req.requestURI.subString(req.requestURI.lastindexOf('/') + 1);
        Account acc = [SELECT id from Account WHERE Id =:accId];
        delete acc;
    }
    
    @httpPut
    global static void updateAccountById(String name) {
        RestRequest req = RestContext.request;
        String accId = req.requestURI.subString(req.requestURI.lastindexOf('/') + 1);
        Account acc = [SELECT id from Account WHERE Id =:accId];
        acc.name = name;
        update acc;
    }    
    

}