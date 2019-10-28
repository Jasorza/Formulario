using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Formulario.Models;

namespace Formulario.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Formulario.Models.Departamento> Departamento { get; set; }
        public DbSet<Formulario.Models.Provincia> Provincia { get; set; }
        public DbSet<Formulario.Models.Distrito> Distrito { get; set; }
        public DbSet<Formulario.Models.Motivo> Motivo { get; set; }
        public DbSet<Formulario.Models.Usuario> Usuario { get; set; }
    }
}
