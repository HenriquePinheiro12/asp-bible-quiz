<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="BiblieQuizz.Game" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="global.css"/>

    <title>Bible Quiz</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="root">
            <header>
                <div class="brand-logo">
                    <img src="assets/bible-icon.png" class="bible-img" alt="bible icon" />
                    <h1 class="game-title alt-color">Bible Quiz</h1>
                </div>
                <nav>
                    <ul>
                        <li>
                            <asp:Button OnClick="GoToHome" cssClass="alt-color" Text="Home" runat="server" />
                        </li>
                        <li>
                            <asp:Button OnClick="StartGame" cssClass="active" ID="playBtn" Text="Play" runat="server" />
                        </li>
                        <li>
                            <a target="_blank" href="https://github.com/henriquepinheiro12">
                                <asp:Button cssClass="alt-color" Text="About us" runat="server" /> 
                            </a>
                        </li>
                        <li>
                            <asp:Button cssClass="alt-color" Text="Sign in" runat="server" />
                        </li>
                    </ul>
                </nav>
            </header>
            
            <main>
                
                <div class="question-header">
                    <asp:Label ID="questionNumber" Text="Questão 1" CssClass="question-number" runat="server" />
                    <asp:Label ID="scoreLbl" Text="Pontuação: 0" CssClass="score-count" runat="server" />
                </div>
                
                <asp:Label ID="questionStatement" Text="Quantos anos viveu Metusalém?" CssClass="question-statement" runat="server" />
                
                <asp:RadioButtonList ID="rdoList" CssClass="question-alt-container" runat="server">
                    
                </asp:RadioButtonList>

                <asp:Button ID="confirmBtn" Text="Confirmar" CssClass="confirm-btn" runat="server" />

            </main>
            
            <footer>
                <h2>
                    <a target="_blank" href="https://github.com/henriquepinheiro12">
                        @HenriquePinheiro
                    </a>
                </h2>

                <ul class="icons">
                    <li>
                        <img src="assets/facebook-icon.svg" alt="facebook icon" />
                    </li>
                    <li>
                        <img src="assets/instagram-icon.svg" alt="instagram icon" />
                    </li>
                    <li>
                        <img src="assets/twitter-icon.svg" alt="twitter icon" />
                    </li>
                    <li>
                        <img src="assets/tiktok-icon.svg" alt="tiktok icon" />
                    </li>
                </ul>
            </footer>
        </div>
    </form>
</body>
</html>
