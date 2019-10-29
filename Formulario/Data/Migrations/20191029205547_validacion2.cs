using Microsoft.EntityFrameworkCore.Migrations;

namespace Formulario.Data.Migrations
{
    public partial class validacion2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Celular",
                table: "Usuario",
                maxLength: 10,
                nullable: false,
                oldClrType: typeof(string),
                oldMaxLength: 15);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Celular",
                table: "Usuario",
                maxLength: 15,
                nullable: false,
                oldClrType: typeof(string),
                oldMaxLength: 10);
        }
    }
}
