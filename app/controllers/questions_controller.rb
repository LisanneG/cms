class QuestionsController < ApplicationController
  before_action :authenticate_admin!, :except => [:index, :show]
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

      respond_to do |format|
        if @question.question_type == "multiple_choice"
          format.html { render 'multiple_choice' }
          format.json { render :json => @question.to_json(:include => [:answers])}
        elsif @question.question_type == "multiple_choice_image"
          format.html {  render 'multiple_choice_image' }
          format.json { render :json => @question.to_json(:include => [:answers])}
        elsif @question.question_type == "open"
          format.html { render 'open' }
          format.json { render :json => @question.to_json(:include => [:answers])}
        end
      end
    end

  def index
    @questions = Question.all
    @question = Question.new
    respond_to do |format|
      format.html
      format.json { render :json => @questions.to_json(:include => [:answers])}
    end
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
