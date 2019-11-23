def add x, y
  x + y
end

def subtract x, y
  x - y
end

def sum a
  sum = 0
  a.each do |n|
    sum += n
  end
  sum
end

def multiply a
  result = 1
  a.each do |n|
    result *= n
  end
  result
end

def power x, y
  x ** y
end

def factorial x
  result = 1
  if x == 0
    result = 0
  end
  x.times do |n|
    result *= n + 1
  end
  result
end
