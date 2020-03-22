require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
    def setup
        @article = Article.new(title: "Hello World", description: 'This is a description of an article', user_id: 1)
    end
    # test "article should be valid" do
    #     assert @article.valid?
    # end

    test "Article title should be at least 3 characters" do
        @article.title = 'ad'
        assert_not @article.valid?
    end

    test "Article title should be less than 50 characters" do
        @article.title = 'a' * 51
        assert_not @article.valid?
    end

    test "Article description should be at least ten characters" do
        @article.description = "a" * 9
        assert_not @article.valid?
    end

    test "Article description should not be greater than 300 characters." do
        @article.description = "a" * 301
        assert_not @article.valid? 
    end

    


end