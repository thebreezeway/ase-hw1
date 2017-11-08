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
   
  def create
    @article = Article.new(article_params)
   
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
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

  def delete
  
  end
  
  def edit_article_path(article)

  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
