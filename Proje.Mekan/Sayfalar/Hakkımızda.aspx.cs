using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan.Sayfalar
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var hakkımda = (from x in db.TBLHAKKIMIZDA
                            select new
                            {
                                x.ID,
                                x.ACIKLAMA
                            }).ToList();
            Repeater1.DataSource = hakkımda;
            Repeater1.DataBind();
        }
    }
}