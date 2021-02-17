using System;

namespace dam
{
    class Program
    {
        static void Main(string[] args)
        {

            int numeroIntroducido = 0;
            int cierre = -1;
            int cantidadDiez = 0;
            const int RANGOMINIMO = 0;
            const int RANGOMAXIMO = 10;
            String numeroString = "";

            do
            {


                numeroString = Console.ReadLine();
                numeroIntroducido = int.Parse(numeroString);

                if (numeroIntroducido >= RANGOMINIMO && numeroIntroducido <= RANGOMAXIMO)
                {
                 Console.WriteLine("Número admitido.");  
                }else{
                    Console.WriteLine("El número está fuera de rango.");
                }

                 if (numeroIntroducido == 10)
                    {
                        cantidadDiez++;
                    }

            } while (numeroIntroducido != cierre);

            Console.WriteLine($"Tienes {cantidadDiez} notas con la calificación de 10.");

        }
    }
}
