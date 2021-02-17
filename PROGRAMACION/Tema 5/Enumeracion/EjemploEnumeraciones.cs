using System;

namespace prueba
{
    class Program
    {
        enum Color{Blanco,Verde,Rosa}
        static void Main(string[] args)
        { 
            string cadena=Console.ReadLine();
            if(Enum.IsDefined(typeof(Color),cadena))
            {
                Color c=(Color)Enum.Parse(typeof(Color),cadena);
                Console.Write(c);
            }
            else{
                foreach(string e in Enum.GetNames(typeof(Color) ))
                      Console.WriteLine(e);
            }
           
            foreach(Color e in Enum.GetValues(typeof(Color) ))
                      Console.WriteLine(e);
        }
    }
}
