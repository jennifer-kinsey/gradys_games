
FactoryGirl.define do
  factory :user do
    name 'Fred'
    admin false
    sequence(:email) { |n| "person_#{n}@example.com" }
    password 123456
  end

  factory :admin_user, class: 'User' do
    name 'Grady'
    admin true
    sequence(:email) { |n| "person_#{n}@example.com" }
    password 123456
  end

  factory :review do
    association :user, :factory => :admin_user, strategy: :build
    game
    body 'what the adventure!'
    rating 4
  end



  factory :game do
    name 'Final Fantasy'
    description 'Japanese kids doing whatever it takes'
    price 60
    image 'http://gematsu.com/wp-content/uploads/2017/01/Final-Fantasy-VII-Remake_2017_01-31-17_001.jpg'
    genre 'RPG'
    platform 'PS4'
  end
end
