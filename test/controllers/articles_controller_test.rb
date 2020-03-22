
require 'test_helper'


class ArticlesControllerTest < ActionDispatch::IntegrationTest
    def setup
        @article = Article.create(title: 'Hello world', description: "we are going through weird times", user_id: 1)
    end

    test "Should get articles index" do
        get article_path
        assert_response :success

    end
    test "Should get new articles" do
        get new_article_path
        assert_response :success
        
    end
    test "Should get show articles" do
        get article_path(@article.id)
        assert_response :success
        
    end

end