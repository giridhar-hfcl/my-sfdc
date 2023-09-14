public class ArithmeticClass {

    public integer res { get; set; }

    public integer num2 { get; set; }

    public integer num1 { get; set; }

    public PageReference remainder() {
        res = math.mod(num1, num2);

        return null;
    }


    public PageReference division() {
            res = num1 / num2;

        return null;
    }


    public PageReference multiplication() {
            res = num1 * num2;

        return null;
    }


    public PageReference subtraction() {
            res = num1 - num2;
        return null;
    }


    public PageReference addition() {
        res = num1 + num2;
        return null;
    }


}