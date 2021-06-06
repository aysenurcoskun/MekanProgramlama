using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Mekan.Entity;

namespace Proje.Mekan
{
    public partial class MekanBilgi : System.Web.UI.Page
    {
        MekanProjeEntities1 db = new MekanProjeEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Request.QueryString["MEKANID"]);
            //var mekanlar = db.TBLMEKAN.Where(x => x.MEKANID == id).ToList();
            //Repeater1.DataSource = mekanlar;
            //Repeater1.DataBind();
            //var mekanlar2 = db.TBLMEKAN.ToList();
            int id = Convert.ToInt32(Request.QueryString["MEKANID"]);
            var mekanlar2 = db.TBLMEKAN.Where(x => x.MEKANID == id).ToList();
            
            ListView1.DataSource = mekanlar2;
            ListView1.DataBind();

            var yorumlar = db.TBLYORUM.ToList();
            
            


            //var yorumlar = db.TBLYORUM.Where(x => x.YORUMMEKAN == id).ToList();




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}