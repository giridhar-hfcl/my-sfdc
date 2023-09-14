@IsTest
public class SetMethods {
    public static testmethod void main() {
        Set<integer> obj = new Set<integer>();
        obj.add(-1);
        obj.add(3);
        system.debug(obj);
        
        // removeAll
        Set<integer> mySet = new Set<integer>{1, 3};
        List<integer> myList = new List<integer>{1, 10};
        
        Boolean res1 = mySet.removeAll(myList);
        system.debug(myList);
        system.debug(mySet);
        system.debug('result: ' + res1);
        
        // retainAll
        Set<integer> mySet1 = new Set<integer>{1, 3, 77};
        Set<integer> mySet2 = new Set<integer>{1, 3, 7};
        
        Boolean res2 = mySet1.retainAll(mySet2);
        system.debug(mySet1);
        system.debug(mySet2);
        system.debug('result: ' + res2);
    }
}