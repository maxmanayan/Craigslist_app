class Language < ApplicationRecord
  has_many :questions, dependent: :destroy

  # class method ie you call on the class (in this case language)
  def self.get_all_questions

    languages = Language.all

    all_questions = []

    languages.each do |language|
      language.questions.each do |question|
        all_questions.push(question)
      end
    end

    return all_questions
  end

  def self.get_lang_info
    languages = Language.all

    languages.map do |lang|
      lang.get_info
    end

  end


  # instance method called on an instance of the class
  def get_info
    "here is some info on #{self.name}: #{self.about}"
  end

end
