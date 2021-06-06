using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;
namespace Proje.Mekan.Sayfalar
{
    public partial class MekanGüncelle : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["MEKANID"]);
            if (Page.IsPostBack == false)
            {
                var sehirler = (from x in db.TBLSEHIR
                                select new
                                {
                                    x.SEHIRAD,
                                    x.SEHIRID
                                }).ToList();
                DropDownList1.DataSource = sehirler;
                DropDownList1.DataBind();

                var deger = db.TBLMEKAN.Find(y);
                TextBox1.Text = deger.MEKANRESIM;
                TextBox2.Text = deger.MEKANBASLIK;
                TextBox3.Text = deger.MEKANBILGI;
                DropDownList1.SelectedValue = deger.MEKANSEHIR.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["MEKANID"]);
            var blog = db.TBLMEKAN.Find(y);
            blog.MEKANRESIM = TextBox1.Text;
            blog.MEKANBASLIK = TextBox2.Text;
            blog.MEKANBILGI = TextBox3.Text;
            blog.MEKANSEHIR = byte.Parse(DropDownList1.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Mekanlar.aspx");
        }
    }
}