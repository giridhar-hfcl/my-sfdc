@restResource(urlmapping='/mymerchandise/*')
global class RESTMerchandise {
	@httpGet
    global static List<Merchandise__c> getAllMerchandise(){
    	return [SELECT id, Name FROM Merchandise__c];
    }
}