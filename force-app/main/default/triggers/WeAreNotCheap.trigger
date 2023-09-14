trigger WeAreNotCheap on Course__c (before insert, before update) {
    //List<course__c> obj = new List<course__c>();
    //obj = Trigger.new;
    for(course__c c : Trigger.new) {
        if(c.fee__c < 50000) {
            c.fee__c.addError('Baka! live upto my expectation');
        }
    }
}