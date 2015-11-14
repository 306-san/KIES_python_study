N = gets.to_f
A = gets.chomp
B = A.split(" ")
a = N
ave = 0
B.each do |num|
  ave += num.to_f
  if num.to_f == 0
    a -= 1.0
  end
end
p (ave/a).ceil
