using System;

namespace dam
{
    class Program
    {

        public static void ArrayCapicua()
        {
            Console.Write("Introduce el número a comparar: ");           
            char[] numero = Console.ReadLine().ToCharArray();

            //Guardamos el tamaño del array que hemos creado
            //Para poder trabajar en sus posiciones
            int tamaño = numero.Length;

            //Dejamos preparado el contador de derecha a izquierda
            //para poder hacer la comparación entre el primer y ultimo caracter
            int j = tamaño - 1;
           
            bool capicua = true;

            //Comparamos recorriendo en todas las posiciones con i y j
            //y vamos comprobando que sean iguales
            //mientras que sean iguales capicua será true
            //y cuando detecte que no cambiará a false y ya saldrá del bucle for
            for (int i = 0; i < tamaño/2 && capicua == true; i++, j--)
            {
                

                if (numero[i] != numero[j])
                {

                    capicua = false;     


                }
                

            }

            //Al tener la variable capicua en true or false
            //Podremos decir que si es true nos muestre que si es capicua por pantalla
            //y si es false decir que el número no es capicua
            if (capicua == true)
            {
                Console.WriteLine("El numero es capicua");
            }else{
                Console.WriteLine("El numero no es capicua");
            }
            
            
        }
        

        static void Main(string[] args)
        {
            Console.Clear();
            ArrayCapicua();



        }
    }
}

