dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(words,dictionary)
  hash_to_return = Hash.new(0)

  words.split(" ").each do |word|

    (0...word.length).each do |i|
      (0...word.length).each do |l|
        if dictionary.include?(word[i..l].downcase)
          hash_to_return[word[i..l].downcase] += 1
        end
      end
    end
  end


  hash_to_return
end










# substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
  # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }