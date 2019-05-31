def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(arr)
    sum = 0
    arr.each do |index|
        sum += index
    end
    sum
end

def multiply(arr)
    product = 1
    arr.each do |index|
        product *= index
    end
    product
end

def power(a,b)
    a ** b
end

def factorial(a)
    if a == 0
        1
    else
        a * factorial(a-1)
    end
end