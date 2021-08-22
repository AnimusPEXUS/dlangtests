interface Int
{
    void coolFunc();
}

class C1
{
    void coolFunc()
    {
        {
            auto obj = (cast(C1)(cast(Int) this));
            if (obj !is null)
            {
                do_one_thing();
            }
        }
        {
            auto obj = (cast(C2)(cast(Int) this));
            if (obj !is null)
            {
                do_another_thing();
            }
        }
        {
            auto obj = (cast(C3)(cast(Int) this));
            if (obj !is null)
            {
                do_something_else();
            }
        }
        return;
    }
}

class C2 : C1, Int
{

}

class C3 : C1, Int
{

}

class C4 : C1, Int
{

}

void main()
{
    auto c = new C2;
    c.coolFunc();
}
