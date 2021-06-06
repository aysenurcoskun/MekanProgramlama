using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLILETISIM t = new TBLILETISIM();
            t.ADISOYADI = TextBox1.Text;
            t.TELEFON = TextBox2.Text;
            t.MAIL = TextBox3.Text;
            t.MESAJ = TextBox4.Text;
            db.TBLILETISIM.Add(t);
            db.SaveChanges();
            Response.Redirect("iletisim.aspx");
        }
    }
}