class User
  attr_reader :name, :age
    
  def initialize(**user)
    @name = user[:name]
    @age = user[:age]
  end
end

class Zoo
  def initialize(**params)
    @infant = params[:entry_fee][:infant]
    @children = params[:entry_fee][:children]
    @adult = params[:entry_fee][:adult]
    @senior = params[:entry_fee][:senior]
  end

  def info_entry_fee(user)
    entry_fee = case user.age
                when 0..5
                  @infant
                when 6..12
                  @children
                when 13..64
                  @adult
                when 65..120
                  @senior
                end
    puts "#{user.name}さんの入場料金は#{entry_fee}円です。"
  end
end

zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500})

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108)
]

users.each do |user|
  zoo.info_entry_fee(user)
end