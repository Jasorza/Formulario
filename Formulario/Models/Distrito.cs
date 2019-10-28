using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Formulario.Models
{
    public class Distrito
    {
        public int DistritoID { get; set; }
        public String Nombre { get; set; }
        public int ProvinciaID { get; set; }
        public Provincia Provincia { get; set; }
    }
}
