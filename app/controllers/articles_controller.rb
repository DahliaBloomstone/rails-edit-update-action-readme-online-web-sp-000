class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  # . Since the form will need to know which record is being edited, this will need to be a dynamic route that accepts an :id as a parameter that the controller can access:
  #  route: get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  def edit
    get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  end

# This second route will also need to be dynamic, accepting the same :id as a parameter so that the action will know which record is being altered.
# PATCH: we're sending data to the server
# route: patch 'articles/:id', to: 'articles#update'

def update
end


end
