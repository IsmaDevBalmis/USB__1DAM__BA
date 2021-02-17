using System;
using System.Text;
using System.Xml.Serialization;




namespace ejercicio1_toma2


{
    class Program
    {

        public static void IntroduceNota()
        {
            int alumnos = 25;
            // int[] notasAlumnos = new int[alumnos];
            int validacion = 0;
            int[] cantidadPorNota = new int[11];
           

            
            for (int i = 0; i < alumnos && validacion >= 0 && validacion <= 10; i++)
            {
                Console.WriteLine($"Inserte las notas del alumno {i + 1}: ");
                validacion = int.Parse(Console.ReadLine()); ;

                if (validacion >= 0 && validacion <= 10)
                {
                    // notasAlumnos[i] = validacion;
                    cantidadPorNota[validacion]++;
                }

                

               // Console.WriteLine(notasAlumnos[i]);


            }

            for (int j = 0; j < cantidadPorNota.Length;j++)
            {
                if (cantidadPorNota[j] != 0)
                {
                    Console.WriteLine($"Has introducido {cantidadPorNota[j]} veces la nota {j}.");
                }
            }

        }



        static void Main(string[] args)
        {

            IntroduceNota();


        }


    }
}
