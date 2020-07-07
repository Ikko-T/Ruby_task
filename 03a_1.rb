class User
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
  end

  def info
    puts "名前:#{@name}\n年齢:#{@age}\n性別:#{@gender}"
  end
end

user1 = User.new(name: "神里", age: 32, gender: "男")
user2 = User.new(name: "たけ", age: 38, gender: "男")

user1.info
puts "--------------------"
user2.info