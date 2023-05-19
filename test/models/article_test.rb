require "test_helper"

class ArticleTest < ActiveSupport::TestCase

  setup do
    puts("run beform test")
  end

  teardown do
    puts("run after test")
  end

  test "should save article" do
    @article = Article.new
    assert @article.save
  end

  test "should find article" do
    @article = Article.new()    
    @article.title = "Fun coding"
    @article.body = "Make coding fun"
    @article.published = false
    @article.save

    expected_article = Article.find(@article.id)
    assert_equal(expected_article.title,  @article.title)
    assert_equal(expected_article.body, @article.body)
    assert_equal(expected_article.published, @article.published)
  end

  test "should delete article" do
    @article = Article.new
    @article.save
    assert_difference('Article.count', -1) do
      @article.destroy
    end
  end

  test "should update article" do
    fun_article = articles(:fun_task)
    fun_update_title = "More rails fun"
    fun_article.update({title: fun_update_title})
    assert_equal(fun_update_title, fun_article.title)
  end
end
