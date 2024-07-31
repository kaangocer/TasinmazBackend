using Microsoft.EntityFrameworkCore.Migrations;

namespace ilkDeneme.Migrations
{
    public partial class LogTableModelBuilder : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "Durumlar",
                columns: new[] { "DurumId", "DurumAdi" },
                values: new object[,]
                {
                    { 1, "Başarılı" },
                    { 2, "Başarısız" }
                });

            migrationBuilder.InsertData(
                table: "IslemTipleri",
                columns: new[] { "IslemTipId", "IslemAdi" },
                values: new object[,]
                {
                    { 1, "Yeni Kayıt" },
                    { 2, "Güncelleme" },
                    { 3, "Silme" },
                    { 4, "Giriş" }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "Durumlar",
                keyColumn: "DurumId",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "Durumlar",
                keyColumn: "DurumId",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "IslemTipleri",
                keyColumn: "IslemTipId",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "IslemTipleri",
                keyColumn: "IslemTipId",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "IslemTipleri",
                keyColumn: "IslemTipId",
                keyValue: 3);

            migrationBuilder.DeleteData(
                table: "IslemTipleri",
                keyColumn: "IslemTipId",
                keyValue: 4);
        }
    }
}
