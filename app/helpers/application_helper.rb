module ApplicationHelper
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
