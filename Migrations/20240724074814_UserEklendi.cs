using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace ilkDeneme.Migrations
{
    public partial class UserEklendi : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    KullaniciId = table.Column<int>(nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    Email = table.Column<string>(nullable: true),
                    PasswordHash = table.Column<byte[]>(nullable: true),
                    PasswordSalt = table.Column<byte[]>(nullable: true),
                    Role = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.KullaniciId);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Tasinmazlar_KullaniciId",
                table: "Tasinmazlar",
                column: "KullaniciId");

            migrationBuilder.AddForeignKey(
                name: "FK_Tasinmazlar_Users_KullaniciId",
                table: "Tasinmazlar",
                column: "KullaniciId",
                principalTable: "Users",
                principalColumn: "KullaniciId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Tasinmazlar_Users_KullaniciId",
                table: "Tasinmazlar");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropIndex(
                name: "IX_Tasinmazlar_KullaniciId",
                table: "Tasinmazlar");
        }
    }
}
