class RenameContentColumnToMemoMemos < ActiveRecord::Migration[5.2]
  def change
    rename_column :memo_memos, :content, :contents
  end
end
