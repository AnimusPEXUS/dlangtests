interface Int
{
    void coolFunc();
}

class C1
{
    void coolFunc()
    {
        return;
    }
}

class C2 : C1, Int
{

}

void main()
{
    auto c = new C2;
}
