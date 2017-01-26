#write your code here
#PSEUDOCODE:
#  for each word:
#  find index of first vowel,
#  continue rest of word
#  add index[0] to index[first vowel] on end of string
#  and "ay" at the end

def translate_one (st)
  vowels = ["a", "e", "i", "o", "u"];
  i = 0; #index of first vowel
  while i < st.length do
    j = i + 2;
    if st[i,2] == "qu"
      i += 2;
      break;
    elsif not vowels.include?(st[i]);
      i += 1;
    else
      break;
    end
  end
  if i == 0
    output = st + "ay";
  else
    output = st[i..-1] + st[0,i] + "ay";
  end
  return output;
end

def translate (st)
  st.split.map { |word| translate_one(word) }.join(" ")
end

puts translate("quiet");
