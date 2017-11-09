class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @new_article_path = "/articles/new"
  end

  def new
    @article = Article.new
  end

  def edit 
    @article = Article.find(params[:id])
  end
   
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
  
  def show
    @article = Article.find(params[:id])
    if @article 
      render text: "成功"
    end
  end

  
 

  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :content )
    end
end
