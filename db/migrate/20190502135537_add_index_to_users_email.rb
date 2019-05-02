class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    #unique: trueでDB側でも一意性をチェックする設定をする
    add_index :users, :email, unique: true
  end
end
