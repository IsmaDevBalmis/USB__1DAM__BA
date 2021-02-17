using System;
using System.Text;
using System.Xml.Serialization;




namespace ejercicio1_toma2


{
    class Program
    {

        public static int Menu()
        {
            int menu = 0;


            Console.WriteLine("Introduce la opción del menú: ");
            Console.WriteLine("1. Introducir contraseña");
            Console.WriteLine("2. Pedir contraseña");
            Console.WriteLine("3. Salir");
            menu = int.Parse(Console.ReadLine());



            return menu;
        }

        public static void IntroducirContraseña()
        {

            
            


        }

        public static void PedirContraseña()
        {




        }

        public static char[] Pedir()
        {

            
            char[] contra = new char[8];

            for (int i = 0; i < 8; i++)
            {

                ConsoleKeyInfo aux = Console.ReadKey(true);
                Console.Write("*");
                contra[i] = aux.KeyChar;


            }



            return contra;
        }

        



        static void Main(string[] args)
        {
            int menu = 0;

            menu = Menu();

            switch (menu) {
                case 1:

                    break;

                case 2:
                    PedirContraseña();
                    break;

                case 3:
                    Console.WriteLine("Saliendo del programa");
                    break;



                default:
                    Console.WriteLine("No existe esta opción");
                    break;
            }
           


        }


    }
}
