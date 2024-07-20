module bellow;


class MyClass
{
    interface MyInterface
    {
        auto opAssign(T)(T value)
        {
            
            return this;
        }
    }
}