def translate(str)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = str.split(' ')
    newArray = []
    words.each {|word|
        chars = word.split('')
        ending = []
        chars.each {|index| 
            if index == "u"
                if ending[(ending.length-1)] == "q"
                    ending << index
                else
                    break
                end
            elsif !(vowels.include?(index))
                ending << index
            else
                break
            end
        }
        chars.shift(ending.length)
        ending = ending.join("")
        ending = ending + "ay"
        word = chars.join + ending
        newArray << word
    }
    newArray.join(" ")
end