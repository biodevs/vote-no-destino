FactoryGirl.define do
  factory :destination do
    name { FFaker::AddressFR.city }
  end
end