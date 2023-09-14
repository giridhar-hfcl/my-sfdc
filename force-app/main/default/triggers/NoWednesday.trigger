trigger NoWednesday on Course__c (before insert, before update, before delete) {
    Datetime dt = System.now();
    String dayOfWeek = dt.format('EEE');
    
    List<Course__C> obj = new List<Course__C>();
    if(Trigger.isInsert){
        obj = Trigger.new;
    }
    else{
        obj = Trigger.old;
    }
    
    for( Course__c c : obj) {
        if(dayOfWeek == 'Wed') {
            c.addError('Wednesday === Funday! No operations allowed.');
        }
    }    
}