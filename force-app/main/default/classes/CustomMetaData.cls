public class CustomMetaData {
    public void getDetails() {
        my_Setting__c m = my_Setting__c.getInstance('pran');
        system.debug(m);
        if(m.is_test__c) {
            system.debug('This is test record');
        } else {
            system.debug('This is not test record');
        }
    }

}