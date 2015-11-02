p "数値を入れてね"
INF = Float::INFINITY
A = gets.to_i
dp = Array.new(1020, 0)

for i in 1..A do
  if i == 1 || i == 7 || i == 12
    dp[i] = 1;
  else
    dp[i] = INF;
  end
end

for i in 1..A do
  if dp[i] != INF
    dp[i+1] = [dp[i+1] , dp[i]+1].min
    dp[i+7] = [dp[i+7] , dp[i]+1].min
    dp[i+12] = [dp[i+12] , dp[i]+1].min
  end
end
p dp[A]
