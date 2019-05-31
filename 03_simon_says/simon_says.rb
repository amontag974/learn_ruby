def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str)
    "#{str} #{str}"
end

def repeat(str,num=2)
    num = num - 1
    new_string = ""
    num.times do
        new_string = new_string + "#{str} "
    end
    new_string = new_string + str
    new_string
end

def start_of_word(str,num)
    str[0..(num-1)]
end

def first_word(str)
    str.split[0]
end

def titleize(str)
    str = str.capitalize
    words = str.split(" ")
    little_words = ["and", "the", "over", "or"]
    words = words.map {|word| 
        if !(little_words.include? word)
            word = word.capitalize
        else
            word = word
        end
    }
    str = words.join(" ")
    str
end
