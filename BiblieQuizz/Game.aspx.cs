using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Json.Net;


namespace BiblieQuizz
{
    public partial class Game : System.Web.UI.Page
    {

        public static List<Question> questionList;
        static Question currentQuestion;
        const string JSONPath = 
            "C:\\Users\\user\\Desktop\\pw\\asp-bible-quiz\\BiblieQuizz\\data\\questions.json";
        // must get it always 

        

        private void Shuffle<Question>(List<Question> list)
        {
            Random rng = new Random();

            int n = list.Count;
            while (n > 1)
            {
                n--;
                int k = rng.Next(n + 1);
                Question value = list.ElementAt(k);
                list[k] = list[n];
                list[n] = value;
            }
        }


        protected void LoadJson() {
            using (StreamReader file = new StreamReader(JSONPath))
            {
                questionList = JsonNet.Deserialize<List<Question>>(file.ReadToEnd());
                Shuffle<Question>(questionList);
            }
        }

        protected void RenderQuestion() {
            questionNumber.Text = $"Questão {Question.CurrentIndex}";
            questionStatement.Text = currentQuestion.Statement;
            scoreLbl.Text = $"Pontuação: {Question.Score}";

            rdoList.Items.Clear();
            int i = 0;
            foreach(string alt in currentQuestion.Alternatives)
                rdoList.Items.Insert(i++, new ListItem(alt));
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Question.ResetGame();
                LoadJson();
                currentQuestion = questionList.ElementAt(Question.CurrentIndex++);
            } else
            {
                handleAnswer();
                currentQuestion = questionList.ElementAt(Question.CurrentIndex++);
            }

            if (Question.CurrentIndex == questionList.Count)
                Response.Redirect("Endgame.aspx");
            RenderQuestion();
        }

        protected void StartGame(object sender, EventArgs e) 
        {
            Response.Redirect("Game.aspx");
        }
            
        protected void GoToHome(object sender, EventArgs e) 
        {
            Response.Redirect("Home.aspx");
        }

        protected void handleAnswer()
        {
            int answerIndex = rdoList.SelectedIndex;



            if (answerIndex == currentQuestion.CorrectAnswer) Question.Score++;

            System.Diagnostics.Debug.WriteLine(Question.Score);


        }
    }
}