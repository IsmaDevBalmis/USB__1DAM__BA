/*

    EJERCICIO 1 PARTE 1

*/

using System;
using System.Runtime.CompilerServices;
using System.Text;
using System.Text.RegularExpressions;

namespace ProgramacionDam
{
    class Program
    {
        


        static void Main(string[] args)
        {
            // System.Text.RegularExpressions poner para usar
            System.Console.WriteLine("Introduce fecha");
            string correo = Console.ReadLine();

            RegexOptions opciones = RegexOptions.Compiled | RegexOptions.IgnoreCase;
            string patron = @"^\d{2}[\s/-]\d{2}[\s/-]\d{4}$";

            bool correoValido = Regex.IsMatch(correo, patron, opciones);
            System.Console.WriteLine($"La fecha {correo} {(!correoValido ? "no " : "")} es valida");



        }
    }
}




/*

    EJERCICIO 1 PARTE 2

*/



// System.Text.RegularExpressions poner para usar
            System.Console.WriteLine("Introduce fecha");
            string correo = Console.ReadLine();

            RegexOptions opciones = RegexOptions.Compiled | RegexOptions.IgnoreCase;
            string patron = @"^\d+$";

            bool correoValido = Regex.IsMatch(correo, patron, opciones);
            System.Console.WriteLine($"La fecha {correo} {(!correoValido ? "no " : "")} es valida");

            
            
            
/*

    EJERCICIO 1 PARTE 3

*/





















