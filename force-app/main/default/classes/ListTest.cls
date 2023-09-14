@IsTest
public class ListTest {
    public static testmethod void main() {
        List<string> names = new List<string>();
        names.add('Giri');
        names.add('Praneetha');
        names.add('Madhu');
        system.debug(names);
        for(string i : names){
            system.debug(i);
        }
        
        system.debug(names[0]);
    }
}