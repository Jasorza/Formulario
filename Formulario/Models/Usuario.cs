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
        [RegularExpression("[a-zA-Z]+", ErrorMessage = "Solo debe de ingresar letras A-Z")]
        [Required]
        [StringLength(100, ErrorMessage = "El maximo de Caracteres es de 100*")]
        public String Nombres { get; set; }

        [RegularExpression("[a-zA-Z]+", ErrorMessage = "Solo debe de ingresar letras A-Z")]
        [Required]
        [StringLength(100, ErrorMessage = "El maximo de Caracteres es de 100*")]
        public String Apellidos { get; set; }

        [RegularExpression("[0-9]+", ErrorMessage ="Ingresar solo numeros")]
        [Required (ErrorMessage ="Ingrese un numero de documento*")]
        [StringLength(15, ErrorMessage = "El numero de documento tiene que ser de 15 caracteres*")]
        public String Documento { get; set; }

        [RegularExpression(@"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$", ErrorMessage ="El correo electronico no es valido, ingrese un correo valido.")]
        [Required(ErrorMessage = "Ingrese un numero de correo electronico*")]
        public String Mail { get; set; }

        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = false)]
        [DataType(DataType.Date)]
        public DateTime Nacimiento { get; set; }

        [RegularExpression("[0-9]+", ErrorMessage = "Ingresar solo numeros")]
        [Required (ErrorMessage ="Ingrese un numero de celular*")]
        [StringLength(10, ErrorMessage = "El numero de celular tiene que ser de 10 caracteres*")]
        public String Celular { get; set; }

        [Required (ErrorMessage = "Debe de selecionar una Parroquia*")]
        public int DistritoID { get; set; }

        [Required(ErrorMessage = "Debe de selecionar un Motivo*")]
        public int MotivoID { get; set; }

        [StringLength(500, ErrorMessage ="El mensaje no tiene que superar los 500 caracteres*")]
        public String Mensaje { get; set; }

        public Motivo Motivo { get; set; }
        public Distrito Distrito { get; set; }
    }
}
