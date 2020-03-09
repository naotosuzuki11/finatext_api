require 'test_helper'

class CommentScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_score = comment_scores(:one)
  end

  test "should get index" do
    get comment_scores_url, as: :json
    assert_response :success
  end

  test "should create comment_score" do
    assert_difference('CommentScore.count') do
      post comment_scores_url, params: { comment_score: { comment_id: @comment_score.comment_id, score: @comment_score.score, score_type: @comment_score.score_type } }, as: :json
    end

    assert_response 201
  end

  test "should show comment_score" do
    get comment_score_url(@comment_score), as: :json
    assert_response :success
  end

  test "should update comment_score" do
    patch comment_score_url(@comment_score), params: { comment_score: { comment_id: @comment_score.comment_id, score: @comment_score.score, score_type: @comment_score.score_type } }, as: :json
    assert_response 200
  end

  test "should destroy comment_score" do
    assert_difference('CommentScore.count', -1) do
      delete comment_score_url(@comment_score), as: :json
    end

    assert_response 204
  end
end
