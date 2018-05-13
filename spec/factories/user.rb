FactoryBot.define do
  factory :user do
    name     'Jane Doe'
    email    'jane_doe@mail.com'
    password '123123'
    role 'resident'

    trait :admin do
      role 'admin'
    end
  end
end
