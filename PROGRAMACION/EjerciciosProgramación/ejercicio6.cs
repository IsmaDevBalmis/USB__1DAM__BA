using System;

namespace dam
{
    class Program
    {
        static void Main(string[] args)
        {
            int numeroIntroducido = 0;
            int numeroMayor = 0;
            String numeroString;

            do
            {
                Console.Write("Introduce un número: ");
                numeroString = Console.ReadLine();
                numeroIntroducido = int.Parse(numeroString);

                if (numeroIntroducido > numeroMayor)
                {
                    numeroMayor = numeroIntroducido;
                }



            } while (numeroIntroducido !=0);

            Console.WriteLine($"El número mayor es: {numeroMayor}");

        }
    }
}
