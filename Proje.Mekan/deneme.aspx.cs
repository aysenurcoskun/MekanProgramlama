using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;


namespace Proje.Mekan
{

    public partial class deneme : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MEKANID"]);
            var yorumlar = db.TBLYORUM.Where(x => x.YORUMMEKAN == id).ToList();

            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();

            var mekanbilgileri = (from x in db.TBLMEKAN
                                  select new
                                  {
                                      x.MEKANID,
                                      x.MEKANBASLIK,
                                      x.MEKANRESIM,
                                      x.MEKANBILGI



                                  }).ToList();


            if (Page.IsPostBack == false)
            {
                var gd = db.TBLMEKAN.Find(id);
                resim1.ImageUrl = gd.MEKANRESIM;
                Label1.Text = gd.MEKANBASLIK;
                //Label2.Text = gd.MEKANBASLIK;
                Label3.Text = gd.MEKANBILGI;


            }


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MEKANID"]);
            TBLYORUM t = new TBLYORUM();
            t.ADSOYAD = TextBox1.Text;
            t.MAIL = TextBox2.Text;
            t.YORUMBILGI = TextBox3.Text;
            t.YORUMMEKAN = id;
            db.TBLYORUM.Add(t);
            db.SaveChanges();
            Response.Redirect("deneme.aspx?MEKANID="+id);
        }
    }
}