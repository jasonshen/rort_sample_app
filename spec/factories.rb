FactoryGirl.define do
  factory :user do
    name     "Jason Shen"
    email    "jasonyshen@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end