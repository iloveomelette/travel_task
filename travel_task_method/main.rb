# ファイルの参照
require "./methods"

# 旅行プランの定義
  plans = [
    { place: "沖縄", price: 10000 },
    { place: "北海道", price: 20000 },
    { place: "九州", price: 15000 }
  ]

# 旅行プランを尋ねるメッセージ
ask_plan
# プランを見せる処理
show_plan(plans)
# プランを選択する処理
selected_plan = select_plan(plans)
# 予約人数を尋ねるメッセージ
ask_reservation(selected_plan)
# 人数を入力する処理
inputed_people = input_people
# 人数の確認をするメッセージ
confirm_people(inputed_people)
# 合計金額を計算する処理
calculate_sum_price(inputed_people, selected_plan)