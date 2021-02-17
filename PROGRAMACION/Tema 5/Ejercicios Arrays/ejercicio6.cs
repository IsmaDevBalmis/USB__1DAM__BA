using System;

namespace dam
{
    class Program
    {

        public static int[] GeneraArray(int tamaño)
        {
            int mayor = 0;
            int posicion = 0;
            
            int[] array = new int[tamaño];
            Random numeroAleatorio = new Random();

            for (int i = 0; i < array.Length; i++)
            {
                
                array[i] = numeroAleatorio.Next(0,100);
                Console.WriteLine(array[i]);

                if (array[i] > mayor)
                {

                    mayor = array[i];
                    posicion = i;
                    
                }



            }
            
            Console.WriteLine($"");

            Console.WriteLine($"El numero mayor es: {mayor}");
            
            Console.WriteLine($"Y su posición es: {posicion}");


            return array;
        }


        

        static void Main(string[] args)
        {
            Console.Clear();
            int tamaño;
            Console.Write("Introduce el tamaño del array: ");
            tamaño = int.Parse(Console.ReadLine());

           GeneraArray(tamaño);




        }
    }
}

