public class MyFutureClass {
	@future
    public static void fun() {
        system.debug('present');
        // AnotherFuture.fun();
        system.enqueueJob(new AnotherFuture());
    }
}