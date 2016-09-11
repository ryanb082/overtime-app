FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  factory :user do
    email { generate :email }
    password 'testing123'
    password_confirmation 'testing123'
    first_name 'rico'
    last_name 'ross'
  end

  factory :admin_user, class: "AdminUser" do
    email { generate :email }
    password 'examples123'
    password_confirmation 'examples123'
    first_name 'Admin'
    last_name 'User'
  end

  factory :non_authorized_user, class: "User" do
    email { generate :email }
    password 'examples123'
    password_confirmation 'examples123'
    first_name 'Non'
    last_name 'Authorized'
  end
end


