// Business Class
public class Student {
	integer sid, mat, phy, chem, total;
    decimal avg;
    string sname;
    
    public void setValues(integer id, string name, integer sub1, integer sub2, integer sub3) {
        sid = id;
        sname = name;
        mat = sub1;
        phy = sub2;
        chem = sub3;
    }
    
    public void totalMarks() {
        total = mat + phy + chem;
    }
    
    public void avgMarks() {
        avg = total / 3;
    }
    
    public void getValues() {
        system.debug('Student: ' + sname + ' with sid: ' + sid + ' got total:' + total + ' marks and avg as:' + avg);
    }
}