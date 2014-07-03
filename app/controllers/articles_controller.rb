class ArticlesController < ApplicationController
  before_action :authenticate_user!

  expose(:article)
  expose(:articles)

  def create
    article = articles.new(article_params)
    article.save
    redirect_to article
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
    article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :privacy).merge(user_id: current_user.id)
  end
end
