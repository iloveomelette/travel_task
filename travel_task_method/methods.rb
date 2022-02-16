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
  print "プランの番号を選択 > "
  select_num = gets.to_i
  plans[select_num - 1]
end

# 予約人数を尋ねるメッセージ
def ask_reservation(select_plan)
  puts <<~TEXT
  
  #{select_plan[:place]}ですね。

  何名で予約されますか？
  
  TEXT
end