require_relative "methods"
# require "./methods"

# 旅行行き先
plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

itinerary(plans)
selected_plan = select_destination(plans)
how_many = party(selected_plan)
total_payment(selected_plan, how_many)