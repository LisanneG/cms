class QuestionsController < ApplicationController
  before_action :authenticate_admin!
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
    redirect_to @question
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
    if @question.question_type == "multiple_choice"
      render 'multiple_choice'
    elsif @question.question_type == "multiple_choice_image"
      render 'multiple_choice_image'
    elsif @question.question_type == "open"
      render 'open'
    end
  end

  def index
    @questions = Question.all
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  private

    def question_params
      params.require(:question).permit(:question, :question_type)
    end
end
