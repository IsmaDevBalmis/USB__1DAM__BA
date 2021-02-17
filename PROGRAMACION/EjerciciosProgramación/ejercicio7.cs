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

            int salidaInt = 0;

            for (int i = 1; i <= numero2Int; ++i)
            {

            salidaInt += numero1Int;

            };

            Console.WriteLine($"{salidaInt}");

        }
    }
}
