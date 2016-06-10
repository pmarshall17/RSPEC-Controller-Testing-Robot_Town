FactoryGirl.define  do
  factory :robot, class: Robot do
    name 'Bob'

    trait :good do
      name "Good guy Bob"
      friendly true
    end

    trait :bad do
      name "Evil Bob"
      friendly false
    end

    passphrase { Robot.generate_passphrase }
    service_date { 30.days.ago }
    sequence :serial_number do |n|
      "rob-#{n}-ot"
    end
    inventor
  end
end
