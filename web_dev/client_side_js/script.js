

//All paragraphs (which is only one in our example) are
//hidden on mouseover.

function hideText(event) 
{
  event.target.hidden = true;
}

var text = document.getElementsByTagName("p");
var paragraph = text[0];

paragraph.addEventListener("mouseover", hideText);
