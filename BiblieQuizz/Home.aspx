<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BiblieQuizz.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="global.css"/>
    <title>Bible Quiz</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="root">
            <div class="hero-container">
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
                        <h2>Teste seus conhecimentos bíblicos!</h2>
                        <asp:Button cssClass="play-btn" OnClick="StartGame" ID="playBtn2" Text="Jogar" runat="server" />
                    </section>
                </div>
            </div>
            <div class="verse-container">
                <p class="text">
                    "Examinais as Escrituras, porque julgais ter nelas a vida eterna, e são elas mesmas que testificam de mim."
                </p>
                <span class="verse">João 5:39</span>
            </div>
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
