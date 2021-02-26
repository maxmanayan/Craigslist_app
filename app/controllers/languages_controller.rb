class LanguagesController < ApplicationController
  def index
    @languages = Language.all
    render component: "Languages", props: {languages: @languages}
  end


  def show
    @language = Language.find(params[:id])

    render component: "Language", props: {language: @language, questions: @language.questions}
  end




  def allQuestions
    # @questions = Question.all

    @questions = Language.get_all_questions

    render component: "AllQuestions", props: {questions: @questions}
  end


  def x
    info = Language.get_lang_info

    render json:{data: info}
  end
end
