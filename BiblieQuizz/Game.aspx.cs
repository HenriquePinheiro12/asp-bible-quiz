﻿using System;
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

        static List<Question> questionList;
        Question currentQuestion;
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

            rdoList.Items.Clear();
            int i = 0;
            foreach(string alt in currentQuestion.Alternatives)
                rdoList.Items.Insert(i++, new ListItem(alt));
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) LoadJson();
            else handleAnswer();

            currentQuestion = questionList.ElementAt(Question.CurrentIndex++);
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
            int i = rdoList.SelectedIndex;

            System.Diagnostics.Debug.WriteLine("Correct i: "+ currentQuestion.CorrectAnswer);
            System.Diagnostics.Debug.WriteLine("Selected i:"+ i);


            if (i == currentQuestion.CorrectAnswer) Question.Score++;

            System.Diagnostics.Debug.WriteLine(Question.Score);


        }
    }
}