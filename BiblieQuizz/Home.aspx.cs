using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BiblieQuizz
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StartGame(object sender, EventArgs e) 
        {
            Response.Redirect("Game.aspx");
        }

        protected void GoToHome(object sender, EventArgs e) 
        {
            Response.Redirect("Home.aspx");
        }
    }
}