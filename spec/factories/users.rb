FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'testing123'
    password_confirmation 'testing123'
    first_name 'rico'
    last_name 'ross'

  end

  factory :admin_user, class: "AdminUser" do
    email 'admin@user.com'
    password 'examples123'
    password_confirmation 'examples123'
    first_name 'Admin'
    last_name 'User'
  end
end


