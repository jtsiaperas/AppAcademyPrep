# primes.rb

def prime?(num)
  
  (2...num).each do |i|
    if (num % i) == 0
      return false
    end
  end
  true
end

def primes(num_primes)
  
  ps = []
  count = 0
  num = 1
  while count < num_primes
    if prime?(num) 
      ps << num
      count += 1
    end
    num += 1
  end

  return ps
end

if __FILE__ == $PROGRAM_NAME
  puts primes(100).to_s
end