using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan.Sayfalar
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBLMEKAN.Count().ToString();
            Label2.Text = db.TBLYORUM.Count().ToString();
            Label3.Text=db.TBLILETISIM.Count().ToString();

        }
    }
}