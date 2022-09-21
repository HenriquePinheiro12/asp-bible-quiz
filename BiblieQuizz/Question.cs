using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiblieQuizz
{
    public class Question
    {
        public Question(int i) => this.index = i;

        private int index;
        private string statement;
        private string[] alternatives;
        private int correctAnswer;

        private static int score = 0;
        private static int currentIndex = 0;

        public int Index { get; }
        public string Statement { get; set; }
        public string[] Alternatives { get; set; }
        public int CorrectAnswer { get; set; }
        public static int Score { get; set; }
        public static int CurrentIndex { get; set; }
        public static void ResetGame() 
        {
            score = 0;
            currentIndex = 0;
        }
    }
}
