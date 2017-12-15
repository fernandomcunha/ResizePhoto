FactoryBot.define do
  factory :photo do
    url File.new("#{Rails.root}/spec/support/fixtures/Tigre.jpg")
  end
end
