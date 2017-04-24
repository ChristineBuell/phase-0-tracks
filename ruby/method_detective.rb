# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

#This could be used for several of these, it's not ideal but I thought I'd mention: 
"zom".replace("zoom")

#But this is a better solution:
 "zom".insert(1, "o")
# => “zoom”

 "enhance".center(15)
# => "    enhance    "

 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 "the usual".insert(-1, " suspects")
#=> "the usual suspects"

 " suspects".insert(0, "the usual")
# => "the usual suspects"

 "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# These are both weird, but they work. In real life I think the first one would be in a variable
# So it wouldn't be strange at all. The second one I thought of because of the .next.next example last week.
 "The mystery of the missing first letter"[1,"The mystery of the missing first letter".length - 1 ]
 "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

 "z".ord 
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ascii value of z. 

 "How many times does the letter 'a' appear in this string?".count "a"
# => 4