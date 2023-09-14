public class AnotherFuture implements Queueable {
    
    public void execute(QueueableContext qc) {
        system.debug('from another future');
    }
}