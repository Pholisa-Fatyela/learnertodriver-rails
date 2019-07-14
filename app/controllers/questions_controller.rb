class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
  end

  def edit
  end

  def create
    @quiz = Quiz.friendly.find(params[:post_id])
    @question = @quiz.questions.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @post, notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit( :content, :level, :draft, :quiz_id)
    end
end
