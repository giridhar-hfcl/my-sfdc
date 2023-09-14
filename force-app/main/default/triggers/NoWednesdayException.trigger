trigger NoWednesdayException on Course__c (before insert, before update, before delete) {
    Datetime dt = System.now();
    String dayOfWeek = dt.format('EEE');
    
     if(dayOfWeek == 'Wed') {
            throw new MyException('Wednesday === Funday! No operations allowed.');
    }
}