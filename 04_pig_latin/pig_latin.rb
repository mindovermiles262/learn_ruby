#write your code here
# TODO: Fix for two two words
def translate (input)
  words = input.split;
  vow = ["a", "e", "i", "o", "u"];
  words.each do |word|
    # if first letter is vowel, add "ay" on end of word
    if vow.include?(word[0])
      output = word + "ay";
    # else if first (and second) letters are consonants
    elsif not vow.include?(word[0])
      if not vow.include?(word[1])
        output = word[2..-1] + word[0..1] + "ay";
      else
        output = word[1..-1] + word[0] + "ay";
      end
    end
  end
end
