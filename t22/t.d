string genA()
{
    string ret =  "
    int[] arr = [
    5,
    10,
    30, " ;

    version(ULTRA_VERSION) {
        ret ~= "300,";
    }

     ret ~= "];";
     return ret;
}

mixin(genA());

void main()
{

}
