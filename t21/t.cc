#include <iostream>

using namespace std;

class Int;
class C1;
class C2;

class Int
{
public:
    virtual void coolFunc()= delete;
};

class C1
{
public:
    void coolFunc()
    {
        cout << "Hello, World!" << endl;
        return;
    }
};

class C2 : public C1, public Int
{
public:
};

int main(int argc, char* argv[])
{
    C2* c2 =  new C2;
    Int* inte = (Int*)c2;
    C2* c2_2 = (C2*)inte;
    c2_2->coolFunc();
}
