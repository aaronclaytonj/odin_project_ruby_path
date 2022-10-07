def caeser_cipher(string, shift)
    result = ''
    string.each_char do |char| 
        if char.ord.between?(65, 90)
            result += ((((char.ord - 65) + shift) % 26) + 65).chr
        elsif char.ord.between?(97, 122)
            result += ((((char.ord - 97) + shift) % 26) + 97).chr
        else
            # puts "not a char"
            result += char
        end
    end
    return result
end

puts caeser_cipher("What a string!", 5)
