
FactoryGirl.define do
  factory :promo, :class => Refinery::Promos::Promo do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

