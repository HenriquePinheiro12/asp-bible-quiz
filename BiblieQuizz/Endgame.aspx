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
                    <h2 class="report-title">Seu desempenho</h2>
                    <div class="repeater-container">
                        <asp:Repeater ID="repeater" runat="server">
                        <ItemTemplate>
                            <!-- Background color depends on correct or not -->
                            <div class="question-report">
                                <h2>Questão <span><%# Container.ItemIndex+1 %></span></h2>
                                <p class="report-statement"><%# DataBinder.Eval(Container.DataItem, "Statement") %></p>
                                <ul class="answer-report">
                                    <li>
                                        <span class="answer-report-label">Resposta correta: </span>
                                        <asp:Label CssClass="correct-answer" Text=<%# DataBinder.Eval(Container.DataItem, "correctAnswer") %> runat="server" />   
                                    </li>  
                                    <li>
                                        <span class="answer-report-label">Sua resposta: </span>
                                        <asp:Label Text=<%# DataBinder.Eval(Container.DataItem, "Answer") %> runat="server" />
                                    </li>
                                </ul>
                                
                                <!-- 
                                    
                                    Radio[checked] : correctAnswer
                                    Radio[!checked] : givenAnser
                                    -->

                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                    </div>
                    
                    <div class="restart-btn-container">
                        <asp:Button CssClass="restart-btn" OnClick="StartGame" Text="Tentar novamente" runat="server" />
                    </div>

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
        </div>
    </form>
</body>
</html>
