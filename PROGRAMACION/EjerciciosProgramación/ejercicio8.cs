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

            if (numero1Int >= 0 && numero2Int >= 0)
            {

                while (numero1Int >= numero2Int)
                {

                    numero1Int -= numero2Int;
                    
                    veces++;

                }


                Console.WriteLine($"El resto es: {numero1Int}");
                Console.WriteLine($"El cociente es: {veces}");


            }




        }
    }
}
