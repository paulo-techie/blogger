class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    def show
        @tag = Tag.find(params[:id])
    end

    def destroy
        @tag = Article.find(params[:id])
        destroyed = @tag.name
        @tag.destroy
        flash.notice = "Tag '#{destroyed}' deleted!"
        redirect_to tags_path
    end
end
