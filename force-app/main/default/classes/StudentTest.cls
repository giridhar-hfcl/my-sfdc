@IsTest
public class StudentTest {
	public static testmethod void main() {
        Student s = new Student();
        s.setValues(1001, 'Ram', 96, 95, 99);
        s.totalMarks();
        s.avgMarks();
        s.getValues();
    }
}