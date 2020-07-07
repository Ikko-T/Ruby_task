def info_task(name:, detail:)
  puts "[タスク名]#{name} [タスク詳細]#{detail}"
end

info_task(name: "洗濯", detail: "8時までに干し終える")
info_task(name: "仕事", detail: "9時〜18時")

# 出力結果
# [タスク名] 洗濯 [タスク詳細] 8時までに干し終える
# [タスク名] 仕事 [タスク詳細] 9時〜18時