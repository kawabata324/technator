# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

case ENV['SECTION']
when "2"

  languages = [
    { name: 'Ruby', image_color: 'red', created_year: 1995, lang_type: 1, framework: 'Ruby on Rails' },
    { name: 'JavaScript', image_color: 'yellow', created_year: 1995, lang_type: 1, framework: 'React' },
    { name: 'Java', image_color: 'red', created_year: 1995, lang_type: 0, framework: 'Spring Framework' },
    { name: 'C++', image_color: 'blue', created_year: 1983, lang_type: 0, framework: 'Unity' }
  ]

when "3"
  languages = [
    { name: 'Ruby', image_color: 'red', created_year: 1995,
      lang_type: 1, framework: 'Ruby on Rails', keyword: "まつもとゆきひろ 宝石 クックパッド gem" },
  ]

  questions = [
    { content: "静的型付け言語?", algorithm: "lang_type_match", eval_value: "静的型付け" },
    { content: "宝石に関係していますか?", algorithm: "keyword_match", eval_value: "宝石" }
  ]
end

if languages.present?
  languages.each do |language|
    ProgramingLanguage.create!(language)
  end
end

if questions.present?
  questions.each do |question|
    Question.create!(question)
  end
end