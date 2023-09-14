trigger WeWontBackdown on Course__c (before delete) {
    //List<course__c> obj = new List<course__c>();
    //obj = Trigger.new;
    for(course__c c : Trigger.new) {
        if(c.fee__c > 50000) {
            c.fee__c.addError('Baka! do not delete expensive ones');
        }
    }
}