using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;
namespace Proje.Mekan.Sayfalar
{
    public partial class Mekanlar : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["Kullanıcı"].ToString());
            if (Session["Kullanıcı"] == null)
            {
                Response.Redirect("/Login.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz:" + Session["Kullanıcı"].ToString());
            }
            Repeater1.DataSource = db.TBLMEKAN.ToList();
            Repeater1.DataBind();
        }
    }
}