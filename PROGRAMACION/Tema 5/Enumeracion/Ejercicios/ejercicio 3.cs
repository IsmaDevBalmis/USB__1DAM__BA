using System;
using System.Runtime.CompilerServices;
using System.Text;

namespace ProgramacionDam
{
    class Program
    {
        enum Abono
        {
            QuinceDias = 70,
            TreintaDias = 60,
            FamiliasNumerosas = 50,
            TerceraEdad = 30,
            Discapacidad = 20,
            Juvenil = 65,
            Infantil = 35,
            Turistico = 90,
            SinTarifa = 120
        }


        public static string PedirAbono()
        {

            do
            {
                
                Console.WriteLine("Introduce el tipo de abono");
                string abonoIntroducido = Console.ReadLine();
                bool abonoValido = Enum.IsDefined(typeof(Abono), abonoIntroducido);
                string[] abonosCorrectos = Enum.GetNames(typeof(Abono));
                if (abonoValido == false)
                {
                    Console.Clear();
                    Console.WriteLine("El abono no es correcto");

                    foreach (var valor in abonosCorrectos)
                        Console.WriteLine(valor);

                }
                else
                {
                    return abonoIntroducido;
                }




            } while (true);
        }

        public static int PedirDias(string tipoAbono)
        {

            do
            {
                int dias = 0;
                Console.WriteLine($"Introduce los días para el abono: {tipoAbono}");
                dias = int.Parse(Console.ReadLine());



                if (tipoAbono == "QuinceDias" && dias != 15)
                {
                    Console.WriteLine($"Su bono de {tipoAbono} no puede ser solicitado para {dias} dias");
                }
                else
                {
                    if (tipoAbono == "TreintaDias" && dias != 30)
                    {
                        Console.WriteLine($"Su bono de {tipoAbono} no puede ser solicitado para {dias} dias");
                    }
                    else
                    {
                        if (dias < 7 && dias > 60)
                        {
                            Console.WriteLine($"Su bono de {tipoAbono} no puede ser solicitado para {dias} dias");
                        }
                        else
                        {
                            return dias;
                        }
                    }
                }

               

            } while (true);

            
        }

        public static float CalcularCoste(string tipoAbono, int dias)
        {

            Abono abono = (Abono)Enum.Parse(typeof(Abono), tipoAbono);

            float precio = ((float)abono * dias)/100;

            return precio;

        }


        static void Main(string[] args)
        {

               string abonoIntroducido = PedirAbono();

               int dias = PedirDias(abonoIntroducido);

            float precio = CalcularCoste(abonoIntroducido, dias);

            Console.Clear();

            Console.WriteLine($"Total a pagar: ");
            Console.WriteLine($"Tipo de abono: {abonoIntroducido}");
            Console.WriteLine($"Dias para el abono: {dias} dias");
            Console.WriteLine($"{precio} euros");
            


        }
    }
}
