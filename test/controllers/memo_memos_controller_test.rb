require 'test_helper'

class MemoMemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memo_memo = memo_memos(:one)
  end

  test "should get index" do
    get memo_memos_url
    assert_response :success
  end

  test "should get new" do
    get new_memo_memo_url
    assert_response :success
  end

  test "should create memo_memo" do
    assert_difference('MemoMemo.count') do
      post memo_memos_url, params: { memo_memo: { contents: @memo_memo.contents, language: @memo_memo.language, title: @memo_memo.title } }
    end

    assert_redirected_to memo_memo_url(MemoMemo.last)
  end

  test "should show memo_memo" do
    get memo_memo_url(@memo_memo)
    assert_response :success
  end

  test "should get edit" do
    get edit_memo_memo_url(@memo_memo)
    assert_response :success
  end

  test "should update memo_memo" do
    patch memo_memo_url(@memo_memo), params: { memo_memo: { contents: @memo_memo.contents, language: @memo_memo.language, title: @memo_memo.title } }
    assert_redirected_to memo_memo_url(@memo_memo)
  end

  test "should destroy memo_memo" do
    assert_difference('MemoMemo.count', -1) do
      delete memo_memo_url(@memo_memo)
    end

    assert_redirected_to memo_memos_url
  end
end
