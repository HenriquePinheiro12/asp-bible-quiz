<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Endgame.aspx.cs" Inherits="BiblieQuizz.Endgame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="global.css"/>
    <title>Bible quiz</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="root">
            <div class="hero-container final-bg">
                <div class="bg-overflow">
                    <header>
                        <div class="brand-logo">
                            <img src="assets/bible-icon.png" class="bible-img" alt="bible icon" />
                            <h1 class="game-title">Bible Quiz</h1>
                        </div>

                        <nav>
                            <ul>
                                <li>
                                    <asp:Button OnClick="GoToHome" cssClass="active" Text="Home" runat="server" />
                                </li>
                                <li>
                                    <asp:Button OnClick="StartGame" ID="playBtn" Text="Play" runat="server" />
                                </li>
                                <li>
                                    <a target="_blank" href="https://github.com/henriquepinheiro12">
                                        <asp:Button Text="About us" runat="server" /> 
                                    </a>
                                </li>
                                <li>
                                    <asp:Button Text="Sign in" runat="server" />
                                </li>
                            </ul>
                        </nav>
                    </header>
                    <section class="hero-content">
                        <h2 class="your-result">Seu resultado:</h2>
                        <asp:Label Text="10 acertos" ID="pointsContainer" CssClass="points-container" runat="server" />
                    </section>
                </div>
                <main>
                    <h2>Seu desempenho</h2>
                    <asp:Repeater runat="server">
                        <ItemTemplate>
                            <!-- Background color depends on correct or not -->
                            <div class="question-report">
                                <h2>Questão <span><%# Eval("Index") %></span></h2>
                                <p><%# Eval("Statement") %></p>

                                <!-- 
                                    
                                    Radio[checked] : correctAnswer
                                    Radio[!checked] : givenAnser
                                    -->

                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                </main>
            </div>
        </div>
    </form>
</body>
</html>
