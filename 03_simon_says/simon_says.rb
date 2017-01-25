#write your code here
def echo(input)
  input;
end

def shout(input)
  input.upcase;
end

def repeat (input, repeats = 2)
  output = (input + " ")* repeats;
  output.rstrip;
end

def start_of_word (input, letters = 1)
  letters = letters - 1;
  input[0..letters];
end

def first_word (input)
  input = input.split
  input[0]
end

def titleize (input)
  no_caps = ["and", "over", "the"];
  input = input.split;
  input.each do |word|
    word.capitalize! unless no_caps.include?(word);
  end
  input[0].capitalize!;
  input.join(" ");
end
