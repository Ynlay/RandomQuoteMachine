<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandomQuoteMachine.aspx.cs" Inherits="RandomQuoteMachine.RandomQuoteMachine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>

.title {
  padding : 0px 0px 10px;
}

.quote-block {
  background-color : white;
  border-width : 5px;
  border-style : solid;
  border-color : black;
  text-align : center;
  margin-left : auto;
  margin-right : auto;
  width : 50%;
  padding : 10px 10px 10px 10px;
  border-radius : 10px;
}

.quote-text {
  padding : 0px 0px 10px 0px;
  font-family : sans-serif;
  font-size : 180%;
  color : green;
}

.twitterButton {
  background-color : #00BFFF;
  border : none;
  width : 100px;
  height : 30px;
  opacity : 1;
  color : white;
  font-size : 110%;
  cursor : pointer;
  border-radius : 8px;
  transition: opacity 0.3s;
  -webkit-transition: opacity .25s ease-in-out;
}

.twitterButton:hover {
  opacity : 0.7;
}

.twitter {
  padding : 20px;
}

.random-button {
  background-color : 	#ADFF2F;
  color : white;
  border : none;
  display : inline-block;
  border-radius : 10px;
  position : relative;
  font-size : 150%;
  font-family : sans-serif;
  cursor : pointer;
  transition-duration : 0.5s;
}
.random-button:hover {
    background-color : #00BFFF;
    transition-duration : 0.5s;
 }

h1 {
  text-align : center;
  font-family : sans-serif;
}

.ending {
  text-align : center;
  position : relative;
}

a {
  color : black;
  text-decoration : none;
  outline : 0;
  text-align : end;
}


    </style>

    <script>      
        function tweetIt() {
            var phrase = document.getElementById('quoteDisplay').innerText;
            var tweetUrl = 'https://twitter.com/share?text=' +
              encodeURIComponent(phrase);
            
            window.open(tweetUrl);
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">
    <div class = "title" id="titleText" runat="server"><h1> Random Quote Machine </h1> <hr/><hr />
    </div>
        <div>
        <div>
<div class = "quote-block" id = "quoteBlock">
  <div class = "quote-text" id = "quoteDisplay" runat="server">
      Press "New Quote" to generate a random quote!!! </div>

    <div class = "random-button">
<asp:Button class = "random-button" OnClick="RandomText" runat="server" Text="New Quote" />
  </div> </div> </div>

        <div class="ending">
                <div class = "twitter">
      <button class = "twitterButton" id = "twitterLink" onclick = "tweetIt()"><i class="fa fa-twitter" aria-hidden="true"></i>
    Tweet</button>
    </div>
            <footer id="footer" runat="server"> ~ by Fotis Aronis </footer></div>
            </div>
    </form>
</body>
</html>
