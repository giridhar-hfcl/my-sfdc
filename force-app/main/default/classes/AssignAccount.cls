@restResource(urlmapping='/myaccount/*')
global class AssignAccount {
    @httpPost
    global static void insertAccount(String accname){
        List <Account> acc = new List<Account>();
        for (Account Ac: acc){
            Ac.name = accname;
        }
        INSERT acc;
    }
 
    
    @httpDelete
    global static void deleteAccount(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accId = req.requestURI.subString(req.requestURI.lastindexOf('/')+1);
        Account acc = [SELECT id , name FROM Account WHERE id=:accId];
        DELETE acc;
    }
}