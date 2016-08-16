def echo(msg)
  msg
end

def shout(msg)
  msg.upcase
end

def repeat(msg, num=2)
  val = []
  num.times do
    val << msg
  end
  return val.join(" ")
end


def start_of_word(word, num)
  word[0..num-1]
end

def titleize(title)
  exclusion = ["and", "or", "the", "over"]

  cap_word = title.split(" ").map do |word|
    if not exclusion.include?(word)
      word.capitalize
    else
      word
    end
  end
  #If the first word is "the", it will not be capitazlie due to the code above therefore we need capitalize it.
  cap_word[0].capitalize!
  str = cap_word.join(" ")

end

def first_word(msg)
  ary = msg.split(" ")
  ary[0]
end
