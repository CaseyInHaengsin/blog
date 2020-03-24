class Api::V1::ArticlesController < ApiController
    before_action :set_article

    def show

    end
    def index
        @articles = Article.all
    end


    private
        def set_article
            @article = Article.find(params[:id])
        end
end