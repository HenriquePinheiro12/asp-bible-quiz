using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiblieQuizz
{
    public class Question
    {
        public Question() { }

        public Question(string stt, string[] alt, int correctI) {
            this.Statement = stt;
            this.Alternatives = alt;
            this.CorrectIndex = correctI;
        }

        public string Statement { get; set; }
        public string[] Alternatives { get; set; }
        public int CorrectIndex { get; set; }
        public string CorrectAnswer { get { return this.Alternatives[this.CorrectIndex]; } }
        public int AnswerIndex { get; set; }
        public string Answer { get { return this.Alternatives[this.AnswerIndex]; } }

        public static int Score { get; set; }
        public static int CurrentIndex { get; set; }
        public static void ResetGame() 
        {
            Score = 0;
            CurrentIndex = 0;
        }
    }
}
