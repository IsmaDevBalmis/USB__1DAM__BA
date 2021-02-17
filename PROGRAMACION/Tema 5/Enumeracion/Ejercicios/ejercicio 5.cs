using System;
using System.Text;
using System.Xml.Serialization;




namespace ejercicio1_toma2


{
    class Program
    {


        enum Color
        {
            Rojo,
            Amarillo,
            Verde,
            Naranja,
            Rosa,
            Azul,
            None
        }



        public static int Menu()
        {

            Console.WriteLine("1. Añadir un color");
            Console.WriteLine("2. Eliminar un color");
            Console.WriteLine("3. Mostrar los colores elegidos");
            Console.WriteLine("Para salir presione ESC después de elegir una opción");
            Console.WriteLine("");

            Console.WriteLine("Introduce opción del menú");

            int opcionMenu = int.Parse(Console.ReadLine());

            return opcionMenu;

        }


        public static string AñadirColor()
        {


            do
            {
                Console.Write("Introduce nombre del color: ");
                string color = Console.ReadLine();

                bool colorValido = Enum.IsDefined(typeof(Color), color);
                string[] coloresCorrectos = Enum.GetNames(typeof(Color));
                if (colorValido == false)
                {
                    Console.Clear();
                    Console.WriteLine("El color no es correcto");

                    foreach (var valor in coloresCorrectos)
                        Console.WriteLine(valor);

                }
                else
                {
                    return color;
                }
            } while (true);

        }


        public static void EliminarColor(string[] ListaColores)
        {
            foreach (var c in ListaColores)
                Console.WriteLine(c);

            Console.WriteLine("Introduce posicion del color a eliminar");
            int posicion = int.Parse(Console.ReadLine());
            posicion = posicion - 1;


            ListaColores[posicion] = "";





        }

        public static void MostrarSeleccion(string[] ListaColores)
        {

            
            foreach(var c in ListaColores)
                Console.WriteLine(c);

        }



        static void Main()
        {

            string[] AñadirColorArray = new string[7];
            int contador = 0;


            do
            {

                Console.Clear();

                int opcionMenu = Menu();



                if (opcionMenu == 1)
                {
                    string color = AñadirColor();
                    AñadirColorArray[contador] = color;
                    if(contador <= 7) 
                        contador++;
                }
                else
                {
                    if (opcionMenu == 2)
                    {
                        EliminarColor(AñadirColorArray);
                    }
                    else
                    {
                        if (opcionMenu == 3)
                        {
                            MostrarSeleccion(AñadirColorArray);
                        }
                        else
                        {
                            Console.WriteLine("Esta opción no existe");
                        }
                    }
                }


            } while (Console.ReadKey().Key != ConsoleKey.Escape);










        }




    }
}
