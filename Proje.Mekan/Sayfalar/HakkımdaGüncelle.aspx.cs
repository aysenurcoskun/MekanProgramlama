using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;
namespace Proje.Mekan.Sayfalar
{
    public partial class HakkımdaGüncelle : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["ID"]);
            var acıklama = db.TBLHAKKIMIZDA.Find(y);
            acıklama.ACIKLAMA= TextBox1.Text;
            
          
            db.SaveChanges();
            Response.Redirect("Hakkımızda.aspx");
        }
    }
}