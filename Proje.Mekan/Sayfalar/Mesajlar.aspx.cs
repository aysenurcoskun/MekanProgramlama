using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan.Sayfalar
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var mesajlar = (from x in db.TBLILETISIM
                            select new
                            {
                                x.ILETISIMID,
                                x.ADISOYADI,
                                x.TELEFON,
                                x.MAIL,
                                x.MESAJ
                            }).ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();

        }
    }
}