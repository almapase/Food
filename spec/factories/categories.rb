FactoryGirl.define do
  factory :category do
    name { FFaker::HipsterIpsum.sentence}
  end

  factory :category_invalid, class: Category do
    name nil
  end
end
