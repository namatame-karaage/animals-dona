class ProblemsController < ApplicationController
  before_action :set_problem, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!, expect: [:index]

  def index
    @problems = Problem.all.page(params[:page]).per(5).order('created_at DESC')
    @like = Like.new
    @all_ranks = Problem.find(Like.group(:problem_id).order('count(problem_id) desc').limit(3).pluck(:problem_id))
   end

  def show
    @like = Like.new
    @comment = Comment.new
    @comments = @problem.comments.includes(:user)
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)
    @problem.user_id = current_user.id
    if @problem.save
      redirect_to problem_path(@problem), notice: "#{@problem.title}投稿に成功しました"
    else
      render :new
    end
  end

  def edit
    if @problem.user != current_user
      redirect_to problems_path, alert: '不正なアクセスです'
    end
  end

  def update
    if @problem.update(problem_params)
      redirect_to problem_path(@problem), notice:"#{@problem.title} 投稿しました"
    else
      render :edit
    end
  end

  def destroy
    @problem.destroy
    redirect_to problems_path, notice:'に成功しました'
  end

  def search
    @problems = Problem.search(params[:keyword])
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  private
  def set_problem
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:title, :body, :image, :classification)
  end
end
