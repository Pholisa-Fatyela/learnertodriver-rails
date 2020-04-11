class QuizzesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_quiz, only: [:show, :edit, :update, :destroy, :upvote, :downvote]


  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.page(params[:page]).per(5)
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
    @questions = @quiz.questions.order(:id => :asc).includes(:answers)
  end

  # GET /quizzes/new
  def new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
  end

  def upvote
    @quiz.upvote_by current_user
    redirect_back(fallback_location: quizzes_path)
  end

  def downvote
    @quiz.downvote_from current_user
    redirect_back(fallback_location: quizzes_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title, :content)
    end
end