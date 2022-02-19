# 料金に関する定数の定義
DISCOUNT_PEOPLE = 5
DISCOUNT_NUM = 0.1
DISCOUNT_RATE = DISCOUNT_NUM * 100
AFTER_DISCOUNT_RATE = 1 - DISCOUNT_NUM

# 旅行プランを尋ねるメッセージ
def ask_plan_message
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
def ask_reservation_message(select_plan)
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
    break if input_num > 0
    puts "1人以上の人数を入力してください。"
  end
  input_num
end

# 人数の確認をするメッセージ
def confirm_people_message(inputted_people)
  puts <<~TEXT
  
  #{inputted_people}名ですね。
  
  TEXT
end

# 合計金額を計算する処理
def calculate_sum_price(inputted_people, selected_plan)
  sum_price = inputted_people * selected_plan[:price]
  discount_price = sum_price * AFTER_DISCOUNT_RATE

  if inputted_people >= DISCOUNT_PEOPLE
    puts <<~TEXT
    #{DISCOUNT_PEOPLE}名以上ですので#{DISCOUNT_RATE.floor}%割引となります。
    
    合計料金は#{discount_price.floor}円です。
    TEXT
  else
    puts "合計金額は#{sum_price}円です。"
  end
end