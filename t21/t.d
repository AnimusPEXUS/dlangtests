import std.stdio;

interface Int
{
    void coolFunc();
}

class C1
{
    void coolFunc()
    {
        writeln(this);
        writeln("C2?:", cast(C2) this !is null);
        writeln("C3?:", cast(C3) this !is null);
        writeln("C4?:", cast(C4) this !is null);
        return;
    }
}

class C2 : C1, Int
{
    override void coolFunc()
    {
        super.coolFunc();
    }
}

class C3 : C1, Int
{
    override void coolFunc()
    {
        super.coolFunc();
    }
}

class C4 : C1, Int
{
    override void coolFunc()
    {
        super.coolFunc();
    }
}

void main()
{
    C2 c2 = new C2;
    Int int0 = c2;
    int0.coolFunc();

    C3 c3 = new C3;
    int0 = c3;
    int0.coolFunc();

    C4 c4 = new C4;
    int0 = c4;
    int0.coolFunc();
}
