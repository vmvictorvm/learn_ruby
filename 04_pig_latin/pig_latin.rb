def translate(msg)
  aryWords = []
  listOfWords = msg.split(" ")
  listOfWords.each do |word|
    aryWords << translateForOneWord(word)
  end
  aryWords.join(" ")

end

#def isQU(msg)
#  if msg[0] == "q" && msg[1] == "u"
#    return true
#end


def translateForOneWord(msg)
  aryChar = msg.split("")
  if aryChar[0].match(/a|e|i|o|u/)
    aryChar << "ay"
  elsif (not aryChar[0].match(/a|e|i|o|u/)) && aryChar[1] == "q" && aryChar[2] == "u"  # consonant + q and u
    aryChar << aryChar[0]
    aryChar << aryChar[1]
    aryChar << aryChar[2]
    aryChar.shift #this will remove the first character
    aryChar.shift #this will remove the first character
    aryChar.shift #this will remove the first character
    aryChar << "ay"
  elsif aryChar[0] == "q" && aryChar[1] == "u"   # q and u
    aryChar << aryChar[0]
    aryChar << aryChar[1]
    aryChar.shift #this will remove the first character
    aryChar.shift #this will remove the first character
    aryChar << "ay"
  elsif (not aryChar[0].match(/a|e|i|o|u/)) && (not aryChar[1].match(/a|e|i|o|u/)) && (not aryChar[2].match(/a|e|i|o|u/))  # if 3 consonants
    aryChar << aryChar[0]
    aryChar << aryChar[1]
    aryChar << aryChar[2]
    aryChar.shift #this will remove the first character
    aryChar.shift #this will remove the first character
    aryChar.shift #this will remove the first character
    aryChar << "ay"
  elsif (not aryChar[0].match(/a|e|i|o|u/)) && (not aryChar[1].match(/a|e|i|o|u/))  #if it starts with 2 consonants
    aryChar << aryChar[0]
    aryChar << aryChar[1]
    aryChar.shift #this will remove the first character
    aryChar.shift #this will remove the first character
    aryChar << "ay"

  elsif not aryChar[0].match(/a|e|i|o|u/)
    aryChar << aryChar[0]
    aryChar.shift #this will remove the first character
    aryChar << "ay"
  end
  aryChar.join("")
end
