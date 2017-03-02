using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RandomQuoteMachine
{
    public partial class RandomQuoteMachine : System.Web.UI.Page
    {
        string[] quotes = {
     "Without wearing any mask we are conscious of, we have a special face for each friend.",
     "You can do anything, but not everything.",
     "Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away.",
     "You miss 100 percent of the shots you never take.",
     "Courage is not the absence of fear, but rather the judgement that something else is more important than fear.",
     "You must be the change you wish to see in the world.",
     "To the man who only has a hammer, everything he encounters begins to look like a nail.",
     "Do not seek to follow in the footsteps of the men of old; seek what they sought.",
     "Sometimes I worry about being a success in a mediocre world.",
     "The person who reads too much and uses his brain too little will fall into lazy habits of thinking.",
     "I’d rather live with a good question than a bad answer.",
     "I am patient with stupidity but not with those who are proud of it.",
     "The cure for boredom is curiosity. There is no cure for curiosity.",
     "When a person can no longer laugh at himself, it is time for others to laugh at him.",
     "Everyone is a genius at least once a year. The real geniuses simply have their bright ideas closer together.",
     "A wise man gets more use from his enemies than a fool from his friends.",
     "Those who make peaceful revolution impossible, will make violent revolution inevitable."
        };

        string[] colors = { "blue", "red", "green", "orange", "violet", "#00FFFF", "magenta" };

        protected void RandomText(Object sender, Object e)
        {
            Random rand = new Random();

            var randomQuote = rand.Next(quotes.Length);
            var randomColor = rand.Next(colors.Length);
            quoteDisplay.InnerHtml = " \"" + quotes[randomQuote] + "\"";
            quoteDisplay.Style.Add("color", colors[randomColor]);
            titleText.Style.Add("color", colors[randomColor]);
            footer.Style.Add("color", colors[randomColor]);
        }



    }
}