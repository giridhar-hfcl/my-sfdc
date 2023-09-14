trigger AllCombined on Course__c (before insert, before update, before delete) {
    if(Trigger.isInsert || Trigger.isUpdate) {
        for(course__c c : Trigger.new) {
            if(c.fee__c < 50000) {
                c.addError('Baka! live upto my expectations');
            }
        }
        
    } else {
        if(Trigger.isDelete) {
            for(course__c c : Trigger.new) {
                if(c.fee__c > 50000) {
                    c.addError('Baka! do not delete expensive ones');
                }
            }
        }
    }
}