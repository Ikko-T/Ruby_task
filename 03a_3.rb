class Item
  attr_reader :name
  def initialize(name:)
    @name = name
  end
end

book = Item.new(name: "ゼロ秒思考")
puts book.name