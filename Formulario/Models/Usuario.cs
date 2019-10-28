using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Formulario.Models
{
    public class Usuario
    {
        public int UsuarioID { get; set; }
        public String Nombres { get; set; }
        public String Apellidos { get; set; }
        public String Documento { get; set; }
        public String Mail { get; set; }
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = false)]
        [DataType(DataType.Date)]
        public DateTime Nacimiento { get; set; }
        public String Celular { get; set; }
        public int DistritoID { get; set; }
        public int MotivoID { get; set; }
        public String Mensaje { get; set; }
        public Motivo Motivo { get; set; }
        public Distrito Distrito { get; set; }
    }
}
