interface Int
{
    public void coolFunc();
};

class C1
{
    public void coolFunc()
    {
        return;
    }
};

class C2 extends C1 implements Int
{

};


public class Main {

    public static void main(String args[])
    {
        Int c = new C2();
    }

}
