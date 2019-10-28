﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Formulario.Models
{
    public class Provincia
    {
        public int ProvinciaID { get; set; }
        public String Nombre { get; set; }
        public int DepartamentoID { get; set; }
        public Departamento Departamento { get; set; }
    }
}
