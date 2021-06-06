using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan.Sayfalar
{
    public partial class YeniMekan : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLMEKAN t = new TBLMEKAN();
            t.MEKANRESIM= TextBox1.Text;
            t.MEKANBASLIK = TextBox2.Text;
            t.MEKANBILGI = TextBox3.Text;
            t.MEKANSEHIR = byte.Parse(DropDownList1.SelectedValue);
            db.TBLMEKAN.Add(t);
            db.SaveChanges();
            Response.Redirect("Mekanlar.aspx");
        }
    }
}