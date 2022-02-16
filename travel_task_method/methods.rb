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