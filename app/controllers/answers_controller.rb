class QuizzesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_answer, only: [:show, :edit, :update, :destroy]


  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.order(created_at: :desc)
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:content)
    end
end
