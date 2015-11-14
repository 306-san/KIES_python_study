flag = false
a = gets.chomp
info = a.split(" ").map(&:to_i)
max_dist = info[4] * info[5]
n = gets.to_i
n.times do
  dist = 0
  a, b = gets.split.map(&:to_i)
  dist += ((info[0]-a)**2 + (info[1]-b)**2 )** 0.5
  dist += ((info[2]-a)**2 + (info[3]-b)**2 )** 0.5
  if dist <= max_dist
    flag = true
  end
end

if flag == false
  puts "NO"
else
  puts "YES"
end
