# 旅行行き先表示
def itinerary(plans)
  puts "旅行プランを選択してください"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行 (¥#{plan[:price]})"
  end
end

# 旅行行き先選択
def select_destination(plans)
  print "プランを選択 >"
  plan_number = gets.to_i
  if plan_number < 1 || 3 < plan_number
    puts "1〜3の数字を入力して下さい"
    exit
  end
  plans[plan_number - 1]
end

# 旅行参加人数
def party(selected_plan)
  puts "#{selected_plan[:place]}ですね、何人で行きますか？"
  print "人数を入力 >"
  how_many = gets.to_i
  if how_many < 1
    puts "人数を入力して下さい"
    exit
  end
  how_many
end

#合計金額
def total_payment(selected_plan, how_many)
  if how_many >= 5
    puts "5人以上なので10％割引となります"
    total = how_many * selected_plan[:price] * 9/10
    print "合計金額: ¥#{total}"
  else
    total = how_many * selected_plan[:price]
    print "合計金額: ¥#{total}"
  end  
end
