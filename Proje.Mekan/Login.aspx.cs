using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan
{
    public partial class Login : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBLADMIN where
                        x.Kullanıcı == TextBox1.Text && x.Sıfre == TextBox2.Text
                        select x;

            if (sorgu.Any())
            {
                Session.Add("Kullanıcı", TextBox1.Text);
                Response.Redirect("/Sayfalar/Mekanlar.aspx");

            }
            else
            {
                Response.Write("Hata");
            }
        }
    }
}