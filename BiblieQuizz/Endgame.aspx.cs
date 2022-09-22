using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BiblieQuizz
{
    public partial class Endgame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            pointsContainer.Text = $"{Question.Score} acertos!";

            if (!(Game.questionList is null))
                repeater.DataSource = Game.questionList;
            else {
                List<Question> questionList = new List<Question>();
                questionList.Add(new Question("Quem é Deus", new string[] { "Jesus", "Cristo", "Jeová" }, 0));
                questionList.Add(new Question("Qual o terceiro livro da Bíblia?", new string[] { "Deuteronômio", "Levítico", "Números" }, 2));

                repeater.DataSource = questionList;
            }

            repeater.DataBind();
        }

        protected void GoToHome(object sender, EventArgs e) => Response.Redirect("Home.aspx");
        protected void StartGame(object sender, EventArgs e) => Response.Redirect("Game.aspx");
        
    }
}