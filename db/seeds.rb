@user = User.create(email: 'test@test.com', password: 'testing123', password_confirmation: 'testing123', first_name:'rico', last_name: 'ross')

puts "1 User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"
