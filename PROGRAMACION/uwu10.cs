using System;

namespace dam
{
    class Program
    {

        public static int Seguro(){

             char respuesta;

             

            int numParticipantes = NumeroParticipantes();

            do
            {
                Console.Write($"¿Estás seguro de jugar con {numParticipantes} jugadores?");
                respuesta = char.Parse(Console.ReadLine());
            } while (respuesta != 'S' && respuesta != 'N');

            if (respuesta == 'S')
            {
                Console.WriteLine("He dicho si");
            }else
            {
                Console.WriteLine("Saliendo del programa");
            }

            return numParticipantes;

        }

        public static void PresentacionJuego()
        {

            Console.WriteLine("--Bienvenido al Juego del Dado--");
            Console.WriteLine("  Para jugar debes... ");

        }


        public static double TiradaDado()
        {

            return new Random().Next(0, 100);
        }

        public static double TotalPuntos(double ResultadoDado)
        {
            double puntosTotales = 0;


            double mult3 = 3;
            double mult5 = 5;
            double mult4 = 4;
            double mult6 = 6;


            if (ResultadoDado % mult3 == 0 || ResultadoDado % mult5 == 0)
            {
                puntosTotales += 10;
            }
            if (ResultadoDado % mult4 == 0 || ResultadoDado % mult6 == 0)
            {
                puntosTotales += 5;
            }

            if (ResultadoDado > 80)
            {
                puntosTotales += 2;
            }

            if (ResultadoDado <= 80 && ResultadoDado > 50)
            {
                puntosTotales += 1;
            }

            if (ResultadoDado <= 50 && ResultadoDado > 20)
            {
                puntosTotales += 2;
            }

            if (ResultadoDado <= 20)
            {
                puntosTotales += 1;
            }


            return puntosTotales;
        }

        public static int NumeroParticipantes()
        {


            Console.WriteLine("--Introduce el número de participantes--");
            int NumeroParticipantes = int.Parse(Console.ReadLine());

            return NumeroParticipantes;
        }

        static void Main(string[] args)
        {
            

            Console.Clear();



            PresentacionJuego();

           
          //  numParticipantes = Seguro();

         int numParticipantes = numParticipantes();


            

           // if (respuesta == 'S')
         //   {
                double x = TiradaDado();

                double z = TotalPuntos(x);

                //Limpiamos la consola
                Console.Clear();


                // Tirada de dado
                Console.WriteLine($"Participantes: {numParticipantes}");

                // Tirada de dado
                Console.WriteLine($"Dado: {x}");

                //Mostrar puntos
                Console.WriteLine($"Puntos: {z}");
          //  }else{
                Console.Clear();
                
         //   }




        }
    }
}

