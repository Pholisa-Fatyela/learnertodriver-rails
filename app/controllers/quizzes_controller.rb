class QuizzesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_quiz, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :sanitize_content, only: [:show, :edit, :update]
  before_action :require_same_user, only: [:edit, :update, :destroy]


  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.page(params[:page]).per(5)
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = current_user.quizzes.build
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = current_user.quizzes.build(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_path, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
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

  def require_same_user
    if current_user != @quiz.user
      flash[:danger] = "Not authorized to edit this quiz"
      redirect_to root_path
    end
  end

    # Sanitize user generated HTML and CSS
    def sanitize_content
      Sanitize.fragment(@quiz, Sanitize::Config::RELAXED)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title, :content)
    end
end
