class PigLatinizer

    attr_reader :words

    def piglatinize(string)

        edited_words = []
        vowels = "aeiou"
        string.split(" ").map do |word|
            if vowels.include?(word.downcase[0])
                edited_words << word + "way"
            else 
                word.each_char.with_index do |char ,i|
                    if vowels.include?(char.downcase)
                        before_vowel = word[0...i]
                        after_vowel = word [i..-1]
                        edited_words << after_vowel + before_vowel + "ay"
                        break
                    elsif vowels.include?(char.downcase)
                        edited_words << word + "yay"
                        break
                    end 
                end 
            end
        end
        edited_words.join(" ")
    end 
end 