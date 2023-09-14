global class MySoapService {
        webservice static Account getAccount(String accId) {
        return [SELECT id, name FROM Account where Id = :accId];
    }    
}