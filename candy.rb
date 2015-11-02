a = gets.to_i
b = gets.to_i

if b % a == 0
  c = (a/b).to_i
else
  c = ((a/b)+1).to_i.abs
end
p (c*b)-a
