class User
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    if @age > 20
      "こんにちは、#{@name}と申します。宜しくお願いいたします・"
    else
      "はいさいまいど〜、#{@name}です!!!"
    end
  end
end

user1 = User.new(name: "あじー", age: 32)
user2 = User.new(name: "ゆたぼん", age: 10)

puts user1.introduce
puts user2.introduce