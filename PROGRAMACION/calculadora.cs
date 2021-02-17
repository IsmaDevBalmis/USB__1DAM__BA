using System;

namespace dam
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("");
            Console.WriteLine("--- Calculadora ---");
            Console.WriteLine("");
            Console.WriteLine("*Sumar");
            Console.WriteLine("*Restar");
            Console.WriteLine("*Multiplicar");
            Console.WriteLine("*Dividir");
            Console.WriteLine("");
            Console.WriteLine("Para salir presione la tecla ESC");
            Console.WriteLine("--------------------");
            Console.WriteLine("");
            Console.Write("Seleccione operación: ");

            int num1 = 0;
            int num2 = 0;


            String seleccion = "";
            seleccion = Console.ReadLine();
            Console.WriteLine($"Ha seleccionado: {seleccion}");
            Console.WriteLine("");

            switch (seleccion)
            {

                case "Sumar":
                
                    Console.Write("Introduce un número: ");
                    int num1Int = int.Parse(Console.ReadLine());
                    Console.Write("Introduce un número: ");
                    int num2Int = int.Parse(Console.ReadLine());
                    resSum = sumar(num1Int, num2Int);
                    Console.WriteLine($"La suma es: {resSum}");
                    break;

                case "Restar":

                    break;

                case "Multiplicar":

                    break;

                case "Dividir":

                    break;

                case "ESC":

                    break;
                
                default:
                    
                    break;
            }

            

        }

        static void sumar(int num1Suma, int num2Suma){
            return sumar;


        }
    }
}
