using System;
using System.Runtime.CompilerServices;
using System.Text;

namespace ProgramacionDam
{
    class Program
    {




       

        static void Main(string[] args)
        {

            int[,] matriz = new int[10, 10];

            for (int i = 0; i < matriz.GetLength(0); i++)
            {

                for (int j = 0; j < matriz.GetLength(1); j++)
                {

                    if (i % 2 == 0)
                    {
                        matriz[i, j] = 1;
                    }
                    else
                    {
                        matriz[i, j] = 0;
                    }

                    Console.Write($"{matriz[i,j], -2}");

                }

                Console.WriteLine("");
            }

        }
    }
}
