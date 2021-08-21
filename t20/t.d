import std.stdio;

enum E
{
    A,
    B,
    C,
    D,
}

void main()
{
    E a;
    a = E.D;
    writeln(a);
    return;
}
