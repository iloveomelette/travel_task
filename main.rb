puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT
while true
  # プランの番号選択を案内
  print "プランの番号を選択 > "
  select_plan = gets.to_i
  # 番号選択に対する返答
  if select_plan === 1
    place = "沖縄"
    price = 10000
  elsif select_plan === 2
    place = "北海道"
    price = 20000
  elsif select_plan === 3
    place = "九州"
    price = 15000
  end
  break if select_plan >=1  && select_plan <=3
  puts "1~3の番号を入力してください。"
end
puts "#{place}旅行ですね。"