using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan
{
    public partial class Sehir : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["SEHIRID"]);
            var mekanlar2 = db.TBLMEKAN.Where(x => x.MEKANSEHIR== id).ToList();
            listViewMekanlar.DataSource = mekanlar2;
            listViewMekanlar.DataBind();

            var bloglar2 = db.TBLSEHIR.ToList();
            Repeater1.DataSource = bloglar2;
            Repeater1.DataBind();
        }
    }
}