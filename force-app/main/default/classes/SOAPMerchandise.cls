global class SOAPMerchandise {
    webService static Merchandise__c getMerchandise(String recId){
        return [SELECT id,name,stock__c,price__c FROM Merchandise__c WHERE id=:recId];
    }
}