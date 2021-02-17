using System;

namespace dam
{
    class Program
    {
        static void Main(string[] args)
        {
            
            int numeroIntroducido = 0;
            int numerosPositivos = 0;
            int numerosNegativos = 0;
            int numeroCero = 0;
            int contador = 0;
            String numeroString;


            while (contador < 10)
            {
                
                Console.Write("Introduce un número: ");
                numeroString = Console.ReadLine();
                numeroIntroducido = int.Parse(numeroString);

                if (numeroIntroducido > 0)
                {
                    //Numeros POSITIVOS

                    numerosPositivos += 1;

                }else{
                    if (numeroIntroducido < 0)
                    {
                        //Numeros NEGATIVOS
                        numerosNegativos += 1;

                    }else{
                        // Aquí si o si es un 0
                        numeroCero += 1;

                    }
                }
                
                contador++;

            }

            Console.WriteLine($"Tienes {numerosPositivos} números positivos, {numerosNegativos} Números negativos y {numeroCero} ceros.");



        }
    }
}
