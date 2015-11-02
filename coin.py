# 支払う金額
pay = 15
# 支払う硬貨の枚数を格納するリスト
# 1円玉，7円玉，12円玉のところは1で初期化
# それ以外はINF = 100000000で初期化
INF = 100000000
dp = [1 if i==1 or i==7 or i==12 else INF for i in range(pay*2)]
for i in range(1, pay+1):
 if dp[i] != 0:
 dp[i+1] = min(dp[i+1], dp[i]+1)
 dp[i+7] = min(dp[i+7], dp[i]+1)
 dp[i+12] = min(dp[i+12], dp[i]+1)
print("最小の枚数は {} 枚です．".format(dp[pay]))
