import std.stdio;

void a(string[] a1)
{
    writef("a %x\n", &a1);

    foreach (string s; a1)
    {
        writeln("a2 e:", &s, " ", s);
    }

    foreach (ref string s; a1)
    {
        writeln("a3 e:", &s, " ", s);
    }

    a1 ~= "dd";

    foreach (string s; a1)
    {
        writeln("a4 e:", &s, " ", s);
    }

    foreach (ref string s; a1)
    {
        writeln("a5 e:", &s, " ", s);
    }
}

void b(ref string[] b1)
{
    writef("b %x\n", &b1);

    foreach (string s; b1)
    {
        writeln("b2 e:", &s, " ", s);
    }

    foreach (ref string s; b1)
    {
        writeln("b3 e:", &s, " ", s);
    }

    b1 ~= "cc";

    foreach (string s; b1)
    {
        writeln("b4 e:", &s, " ", s);
    }

    foreach (ref string s; b1)
    {
        writeln("b5 e:", &s, " ", s);
    }

}

void main()
{
    string[] x;

    writef("x1 %x\n", &x);

    a(x);
    b(x);

    x = ["aa", "bb"];

    writef("x2 %x\n", &x);

    a(x);
    writef("x3 %x\n", &x);
    b(x);
    writef("x4 %x\n", &x);

    foreach (string s; x)
    {
        writeln("x5 e:", &s, " ", s);
    }

    foreach (ref string s; x)
    {
        writeln("x6 e:", &s, " ", s);
    }

}
