1 + 1 = 2
2 + 2 = 4
3 + 3 = 6

"the quick brown fox jumps over the lazy dog"
"test"

if true
  return
else
  raise
end

a = 100
b = 200
print a + b

def fibonacci(i)
  raise if i < 1
  raise unless i.is_a? Integer
  return 1 if i == 1 || i == 2
  fibonacci(i - 1) + fibonacci(i - 2)
end

def cache(i, &block)
  $h ||= {}
  return $h[i] if $h[i]
  result = yield
  $h[i] = result
end

def print_fibonacci(i)
  value = cache(i) { fibonacci(i) }

  print "The #{i}th Fibonacci number is:"
  print value
end
