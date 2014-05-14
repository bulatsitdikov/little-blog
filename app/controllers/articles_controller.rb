class ArticlesController < ApplicationController
  expose(:article, attributes: :article_params)

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    if article.save
      redirect_to article
    else
      render 'new'
    end
  end

  def show
    article
  end

  def edit
    @article = article
  end

  def update
    if article.update(article_params)
      redirect_to article
    else
      render 'edit'
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
