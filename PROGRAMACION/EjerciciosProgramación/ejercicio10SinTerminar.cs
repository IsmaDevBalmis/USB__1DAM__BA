using System;

namespace dam
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.Write("Introduce el primer valor: ");
            String numero1String = Console.ReadLine();
            int numero1Int = int.Parse(numero1String);

            Console.Write("Introduce el segundo valor: ");
            String numero2String = Console.ReadLine();
            int numero2Int = int.Parse(numero2String);

            int veces = 0;
            int veces2 = 0;
            int res2 = 0;
            int res3 = 0;

            while (veces <= numero1Int)
            {
                
                veces++;
                int res1 = numero1Int%veces;

                if (res1 == 0)
                {
                    res2 += veces;
                }


            }

             while (veces2 <= numero2Int)
            {
                
                veces2++;
                res3 = numero2Int%veces2;

                if (res3 == 0)
                {
                    res3 += veces2;
                }


            }

            Console.WriteLine($"{res2}");
             Console.WriteLine($"{res3}");

        }
    }
}
