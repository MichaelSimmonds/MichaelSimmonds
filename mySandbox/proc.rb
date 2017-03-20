def outer (arg1, arg2)
  return arg1+arg2
end

def inner ()
  return 5
end

puts outer(2,inner)
