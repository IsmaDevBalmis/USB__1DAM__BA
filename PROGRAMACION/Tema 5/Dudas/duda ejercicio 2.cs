using System;
using System.Runtime.CompilerServices;
using System.Text;

namespace ProgramacionDam
{
    class Program
    {




        public static String Especular(StringBuilder fraseSB)
        {
            String fraseEspeculada = "";

            StringBuilder temporal = new StringBuilder();



            for (int i = 0; i < fraseSB.Length ; i++)
            {



                if (!char.IsWhiteSpace(fraseSB[i])) {

                    temporal.Append(fraseSB[i]);

                }

                if (char.IsWhiteSpace(fraseSB[i]) || i == fraseSB.Length -1) {

                    VueltaPalabra(temporal);
                    temporal = new StringBuilder();


                }



            }



            return fraseEspeculada;
        }

        public static String VueltaPalabra(StringBuilder palabra)
        {
            String palabraReves = "";

            int j = palabra.Length - 1;
            char z;

            for (int i = 0 ;i < palabra.Length/2 ; i++ )
            {

                z = palabra[i];
                palabra[i] = palabra[j];
                palabra[j] = z;
                j--;


            }

            Console.WriteLine(palabra);

        
            return palabraReves;
        }


        static void Main(string[] args)
        {

            String fraseNormal = "";

            Console.WriteLine("Introduce la frase a ofuscar: ");
            fraseNormal = Console.ReadLine();

            StringBuilder fraseSB = new StringBuilder(fraseNormal);

            Especular(fraseSB);



        }
    }
}
