class ArticlesController < ApplicationController
    include ArticlesHelper

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
        @article = Article.new(article_params)
        @article.save
        flash.notice = "Article '#{@article.title}' created!"
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:id])
        destroyed = @article.title
        @article.destroy
        flash.notice = "Article '#{destroyed}' deleted!"
        redirect_to articles_path
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)

        flash.notice = "Article '#{@article.title}' Update!"
      
        redirect_to article_path(@article)
    end
end
