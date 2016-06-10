FactoryGirl.define do
  factory :inventor, class: Inventor do
    name 'Steve'
    first_name 'Steve'
    last_name 'Jobs'
    email { "#{first_name}.#{last_name}@robotbuilder.com" }
    age 102
  end
end
