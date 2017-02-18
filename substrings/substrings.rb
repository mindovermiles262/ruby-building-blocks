def substrings(query, dict)
    query = query.downcase.split(/\W+/)
    matches = Hash.new(0)
    query.each do |spl|
        dict.each { |word| spl.match(word)? matches[word] += 1 : {}}
    end
    return matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i",\
    "low","own","part","partner","sit"]

puts(substrings("below", dictionary))
# => {"below"=>1, "low"=>1}

puts(substrings("Howdy partner, sit down! How's it going?", dictionary))
# => {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, 
#     "down"=>1, "own"=>1, "go"=>1, "going"=>1}
