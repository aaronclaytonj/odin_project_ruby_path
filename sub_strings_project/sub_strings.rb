
def sub_strings(string)
    
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    search_array = string.split(" ")

    res = Hash.new(0)
    dictionary.each do |word|
        search_array.each do |search|
            if search.include?(word)
                if res[word]
                    res[word] += 1
                # else
                #     res[word] = 1
                end
            end
        end
    end
    return res
end

puts sub_strings("Howdy partner, sit down! How's it going?")

#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
