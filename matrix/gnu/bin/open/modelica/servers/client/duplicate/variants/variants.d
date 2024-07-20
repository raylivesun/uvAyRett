module matrix.gnu.bin.open.modelica.servers.client.duplicate.variants.variants;

class MyClass
{
    interface MyInterface
    {
        int opApply(scope int delegate(ref Item) dg)
        {
            int result = 0;
        
            foreach (item; array)
            {
                result = dg(item);
                if (result)
                    break;
            }
        
            return result;
        }
    }
}