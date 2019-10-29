using Microsoft.EntityFrameworkCore.Migrations;

namespace Formulario.Data.Migrations
{
    public partial class validationDNI : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Documento",
                table: "Usuario",
                nullable: false,
                oldClrType: typeof(string),
                oldMaxLength: 15);

            migrationBuilder.AlterColumn<string>(
                name: "Celular",
                table: "Usuario",
                nullable: false,
                oldClrType: typeof(string),
                oldMaxLength: 10);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Documento",
                table: "Usuario",
                maxLength: 15,
                nullable: false,
                oldClrType: typeof(string));

            migrationBuilder.AlterColumn<string>(
                name: "Celular",
                table: "Usuario",
                maxLength: 10,
                nullable: false,
                oldClrType: typeof(string));
        }
    }
}
