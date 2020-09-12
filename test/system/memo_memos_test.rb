require "application_system_test_case"

class MemoMemosTest < ApplicationSystemTestCase
  setup do
    @memo_memo = memo_memos(:one)
  end

  test "visiting the index" do
    visit memo_memos_url
    assert_selector "h1", text: "Memo Memos"
  end

  test "creating a Memo memo" do
    visit memo_memos_url
    click_on "New Memo Memo"

    fill_in "Content", with: @memo_memo.content
    fill_in "Language", with: @memo_memo.language
    fill_in "Title", with: @memo_memo.title
    click_on "Create Memo memo"

    assert_text "Memo memo was successfully created"
    click_on "Back"
  end

  test "updating a Memo memo" do
    visit memo_memos_url
    click_on "Edit", match: :first

    fill_in "Content", with: @memo_memo.content
    fill_in "Language", with: @memo_memo.language
    fill_in "Title", with: @memo_memo.title
    click_on "Update Memo memo"

    assert_text "Memo memo was successfully updated"
    click_on "Back"
  end

  test "destroying a Memo memo" do
    visit memo_memos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Memo memo was successfully destroyed"
  end
end
