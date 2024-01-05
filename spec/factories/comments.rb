FactoryBot.define do
  factory :comment do
    commenter { Faker::Name.name }
    body { Faker::Lorem.paragraph(sentence_count: 10) }
    article
  end
end
