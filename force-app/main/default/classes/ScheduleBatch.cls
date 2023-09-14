public class ScheduleBatch implements Schedulable {
    public void execute(SchedulableContext sc) {
        BeyondGL obj = new BeyondGL();
        Database.executeBatch(obj);
    }
}