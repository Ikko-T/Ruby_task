plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

puts "旅行プランを選択してください"
plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:place]}旅行 (¥#{plan[:price]})"
end

print "プランを選択 >"
plan_number = gets.to_i
if plan_number < 1 || 3 < plan_number
  puts "1〜3の数字を入力して下さい"
  exit
end

selected_plan = plans[plan_number-1]
puts "#{selected_plan[:place]}ですね、何人で行きますか？"
print "人数を入力 >"
how_many = gets.to_i
if how_many < 1
  puts "人数を入力して下さい"
  exit
end

if how_many >= 5
  puts "5人以上なので10％割引となります"
  total = how_many * selected_plan[:price] * 9/10
  print "合計金額: ¥#{total}"
else
  total = how_many * selected_plan[:price]
  print "合計金額: ¥#{total}"
end
