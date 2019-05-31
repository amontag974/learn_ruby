class Book

    attr_accessor :title

    def title=(title)
        articles = ["a", "an", "the"]
        conjunctions = ["and", "but", "for", "nor", "or", "so", "yet"]
        prepositions = ["above", "across", "after", "at", "around", "before", "behind","below","beside", "between", "by", "down", "during", "for", "from", "in", "inside", "onto", "of", "off", "on", "out", "through", "to", "under", "up","with"]
        title = title.capitalize
        words = title.split(" ")
        words.collect! { |word|
            if (!articles.include?(word) && !conjunctions.include?(word) && !prepositions.include?(word))
                word.capitalize
            else
                word
            end
        }
        @title = words.join(" ")
    end
end
