#write your code here
def add (a, b)
  output = a + b;
  return output;
end

def subtract (a, b)
  output = a - b;
  return output;
end

def sum (numbers)
  sum = 0;
  numbers.each do |i|
    sum += i;
  end
  return sum;
end
