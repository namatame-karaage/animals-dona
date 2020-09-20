# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: 'test@example.com',
  username: 'テスト',
  password: 'testtest',
  profile_image: File.open('./app/assets/images/上男性.png')
)
User.create!(
  email: 'testa@test.com',
  username: 'スティーブ',
  password: 'aaaa1234',
  profile_image: File.open('./app/assets/images/foodman.jpeg')
)
User.create!(
  email: 'testb@test.com',
  username: 'アンナ',
  password: 'aaaa1234',
  profile_image: File.open('./app/assets/images/hair.colorful.jpeg')
)
User.create!(
  email: 'testc@test.com',
  username: 'ミーナ',
  password: 'aaaa1234',
  profile_image: File.open('./app/assets/images/jump.jpeg')
)
User.create!(
  email: 'testd@test.com',
  username: 'ブライア',
  password: 'aaaa1234',
  profile_image: File.open('./app/assets/images/meagene.jpeg')
)
User.create!(
  email: 'teste@test.com',
  username: 'ミラ',
  password: 'aaaa1234',
  profile_image: File.open('./app/assets/images/女性.png')
)
