@IsTest
public class ListMethods {
    public static testmethod void main() {
        List<integer> obj = new List<integer>();
        obj.add(8);
        obj.add(2);
        obj.add(-10);
        system.debug(obj);
        
        obj.add(2, 5);
        system.debug(obj);
        
        obj.set(1, 2);
        system.debug(obj);
        
        List<integer> obj1 = new List<integer>();
        obj1.addAll(obj);
        system.debug(obj1);
        
        List<integer> obj2 = obj.clone();
        system.debug(obj2);
        
        system.debug(obj.get(2));
        system.debug(obj[2]);
        
        system.debug(obj.size());
        
        obj.sort();
        system.debug(obj);
        
        system.debug(obj1.Equals(obj2));
        system.debug(obj.contains(5));
        system.debug(obj.indexOf(5));
        
        obj.remove(2);
        system.debug(obj);
        
        obj.clear();
        system.debug(obj);
    }
}