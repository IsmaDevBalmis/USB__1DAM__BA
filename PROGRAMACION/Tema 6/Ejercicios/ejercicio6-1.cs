using System;
using System.Text;
using System.Xml.Serialization;
using System.Text.RegularExpressions;

namespace ejercicio1_toma2


{
    class Program
    {

        public static bool Validar(string dato)
        {
            bool validado = false;

            

            RegexOptions opciones = RegexOptions.Compiled | RegexOptions.IgnoreCase;
            string patron = @"([A-Za-z]{1}\s){1,}\S$";

            if (Regex.IsMatch(dato, patron, opciones))
            {
                validado = true;
            }

            return validado;
        }

        public static string PedirDato()
        {
            string dato;


            Console.WriteLine("Introduzca el dato");
            dato = Console.ReadLine();


            return dato;
        }

        public static void Respuesta(bool validado, string dato)
        {

            if (validado == true)
            {
                Console.WriteLine($"{dato} si que es valido");
            }
            else
            {
                Console.WriteLine($"{dato} no es valido");
            }


        }


        static void Main()
        {

            string dato = PedirDato();

            bool validado = Validar(dato);

            Respuesta(validado, dato);





        }

    }
}