FactoryBot.define do
  factory :question do
    content { "MyString" }
    option { "MyString" }
    answer { "MyString" }
    quiz { nil }
  end
end
