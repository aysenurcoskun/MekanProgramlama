using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan.Sayfalar
{
    public partial class MekanSil : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["MEKANID"]);
            var blog = db.TBLMEKAN.Find(x);
            db.TBLMEKAN.Remove(blog);
            db.SaveChanges();
            Response.Redirect("Mekanlar.aspx");
        }
    }
}