using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Formulario.Data.Migrations
{
    public partial class Createdatabase : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Motivo",
                columns: table => new
                {
                    MotivoID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Nombre = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Motivo", x => x.MotivoID);
                });

            migrationBuilder.CreateTable(
                name: "Provincia",
                columns: table => new
                {
                    ProvinciaID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Nombre = table.Column<string>(nullable: true),
                    DepartamentoID = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Provincia", x => x.ProvinciaID);
                    table.ForeignKey(
                        name: "FK_Provincia_Departamento_DepartamentoID",
                        column: x => x.DepartamentoID,
                        principalTable: "Departamento",
                        principalColumn: "DepartamentoID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Distrito",
                columns: table => new
                {
                    DistritoID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Nombre = table.Column<string>(nullable: true),
                    ProvinciaID = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Distrito", x => x.DistritoID);
                    table.ForeignKey(
                        name: "FK_Distrito_Provincia_ProvinciaID",
                        column: x => x.ProvinciaID,
                        principalTable: "Provincia",
                        principalColumn: "ProvinciaID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Usuario",
                columns: table => new
                {
                    UsuarioID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Nombres = table.Column<string>(nullable: true),
                    Apellidos = table.Column<string>(nullable: true),
                    Documento = table.Column<string>(nullable: true),
                    Mail = table.Column<string>(nullable: true),
                    Nacimiento = table.Column<DateTime>(nullable: false),
                    Celular = table.Column<string>(nullable: true),
                    DistritoID = table.Column<int>(nullable: false),
                    MotivoID = table.Column<int>(nullable: false),
                    Mensaje = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuario", x => x.UsuarioID);
                    table.ForeignKey(
                        name: "FK_Usuario_Distrito_DistritoID",
                        column: x => x.DistritoID,
                        principalTable: "Distrito",
                        principalColumn: "DistritoID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Usuario_Motivo_MotivoID",
                        column: x => x.MotivoID,
                        principalTable: "Motivo",
                        principalColumn: "MotivoID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Distrito_ProvinciaID",
                table: "Distrito",
                column: "ProvinciaID");

            migrationBuilder.CreateIndex(
                name: "IX_Provincia_DepartamentoID",
                table: "Provincia",
                column: "DepartamentoID");

            migrationBuilder.CreateIndex(
                name: "IX_Usuario_DistritoID",
                table: "Usuario",
                column: "DistritoID");

            migrationBuilder.CreateIndex(
                name: "IX_Usuario_MotivoID",
                table: "Usuario",
                column: "MotivoID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Usuario");

            migrationBuilder.DropTable(
                name: "Distrito");

            migrationBuilder.DropTable(
                name: "Motivo");

            migrationBuilder.DropTable(
                name: "Provincia");
        }
    }
}
