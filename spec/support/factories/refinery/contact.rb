
FactoryGirl.define do
  factory :contact, :class => Refinery::Marketing::Contact do
    sequence(:base_id) { |n| n }
    name 'John Doe'
    sequence(:email) { |n| "#{n}@foo.com" }
  end
end

