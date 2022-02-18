# 旅行プランを尋ねるメッセージ
def ask_plan
  puts <<~TEXT
  
  旅行プランを選択して下さい。
  
  TEXT
end

# プランを見せる処理
def show_plan(plans)
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(¥#{plan[:price]})"
  end
end

# プランを選択する処理
def select_plan(plans)
  while true do
    print "プランの番号を選択 > "
    select_num = gets.to_i
    break if select_num > 0 && select_num <= plans.length
    puts "1~#{plans.length}の番号を入力してください。"
  end
  plans[select_num - 1]
end

# 予約人数を尋ねるメッセージ
def ask_reservation(select_plan)
  puts <<~TEXT
  
  #{select_plan[:place]}旅行ですね。

  何名で予約されますか？
  
  TEXT
end

# 人数を入力する処理
def input_people
  while true do
    print "人数を入力 > "
    input_num = gets.to_i
    break if input_num >= 0
    puts "1人以上の人数を入力してください。"
  end
  input_num
end

# 人数の確認をするメッセージ
def confirm_people(inputed_people)
  puts <<~TEXT
  
  #{inputed_people}名ですね。
  
  TEXT
end

# 合計金額を計算する処理
def calculate_sum_price(inputed_people, selected_plan)
  sum_price = inputed_people * selected_plan[:price]
  puts "合計金額は#{sum_price}円です。"
end