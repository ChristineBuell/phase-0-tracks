

bookshelf = [
  first_shelf = [
    {
      "title" => "Beginning Ruby",
      "author" => "Peter Cooper",
      "publication year" => "2016",
      "number of pages" => 454
      }, 
     {
        "title" => "The Well-Grounded Rubyist",
      "author" => "David A. Black",
      "publication year" => "2014",
      "number of pages" => 506
      },
      {
      "title" => "The Book Of CSS3",
      "author" => "Peter Gasston",
      "publication year" => "2015",
      "number of pages" => 279
      }],
  second_shelf = [
    {
      "title" => "Eloquent Javascript",
      "author" => "Marijn Haverbeke",
      "publication year" => "2015",
      "number of pages" => 451
      }, 
      {
        "title" => "Programming iOS 10",
      "author" => "Matt Neuburg",
      "publication year" => "2017",
      "number of pages" => 1057
      },
     {
      "title" => "Game Development With Swift",
      "author" => "Stephen Haney",
      "publication year" => "2015",
      "number of pages" => 199
      }],
  third_shelf = [
      {
      "title" => "The Magic of Shetland Lace Knitting",
      "author" => "Elizabeth Lovick",
      "publication year" => "2013",
      "number of pages" => 143
      }, 
      {
        "title" => "200 Fair Isle Motifs",
      "author" => "Mary Jane Mucklestone",
      "publication year" => "2011",
      "number of pages" => 207
      },
     {
      "title" => "the life-changing magic of tidying up",
      "author" => "Marie Kondo",
      "publication year" => "2014",
      "number of pages" => 213
      }]]
    
 

# All caps for title of second book on first shelf 
puts bookshelf[0][1]["title"].upcase
# Prints third book on the first shelf
puts first_shelf[2]
# Also prints third book on first shelf
puts bookshelf[0][2]

#changes the amount of pages in book to 200
puts bookshelf[1][1]
bookshelf[1][1]["number of pages"] = 200 
puts bookshelf[1][1]






