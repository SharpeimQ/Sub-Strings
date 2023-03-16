dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
phrase = "below"
phrase_two = "Howdy partner, sit down! How's it going?"

#Return a hash counting each substring that is included in the phrase + the number of times each was called
# Iterate through the dictionary checking if the phrase includes the element in the iteration
# Use the reduce method to return a hash that includes the amount of times the element is included

def substrings(phrase, dictionary) 
  array = phrase.downcase.split(" ")

  dictionary.reduce(Hash.new(0)) do |hash, term|
  array.each do |word|
    if word.include?(term)
      hash[term] += 1
    end
  end
    hash
  end
end



puts substrings(phrase, dictionary)

