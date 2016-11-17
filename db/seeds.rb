@user = User.create(email: 'test@test.com', 
                    password: 'testing123', password_confirmation: 'testing123',
                    first_name:'rico',
                    last_name: 'ross', 
                    phone: '5555555555')

puts "1 User created"

AdminUser.create(email: 'admin@test.com', 
                password: 'testing123', 
                password_confirmation: 'testing123', 
                first_name:'Admin', 
                last_name: 'Name',
                phone: '5555555555')

puts "1 Admin created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Audit logs have been created" 

100.times do |audit_log|
    AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Posts have been created" 
