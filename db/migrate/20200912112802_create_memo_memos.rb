class CreateMemoMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memo_memos do |t|
      t.string :title
      t.string :language
      t.string :content

      t.timestamps
    end
  end
end
