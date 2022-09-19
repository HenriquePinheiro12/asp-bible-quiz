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
        private string statement;
        private string[] alternatives;
        private int correctAnswer;
        private static int score = 0;
        private static int currentIndex = 0;

        public string Statement { get { return statement; } set { statement = value; } }
        public string[] Alternatives { get { return alternatives; } set { alternatives = value; } }
        public int CorrectAnswer { get { return correctAnswer; } set { correctAnswer = value; } }
        public static int Score { get { return score; } set { score = value; } }
        public static int CurrentIndex { get { return currentIndex; } set { currentIndex = value; } }
    }
}
