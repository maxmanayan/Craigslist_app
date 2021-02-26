class QuestionsController < ApplicationController


  before_action :set_language

  def new
    # .new does not save to the DB
    @question = Question.new
    render component: "QuestionForm", props: {language: @language, question: @question}
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to language_path(@language)
    else 
      render component: "QuestionForm", props: {language: @language, question: @question, errors: @question.errors.full_messages}
    end
  end

  def edit
    # .find combs through the DB
    @question = @language.questions.find(params[:id])
    render component: "QuestionForm", props: {language: @language, question: @question}
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @language
    else 
    end
  end



  private

  def set_language
    @language = Language.find(params[:language_id])
  end

  def question_params
    params.require(:question).permit(:text, :answer)
  end
end
