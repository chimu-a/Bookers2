class AddUserIdToBsers < ActiveRecord::Migration[6.1]
  def change
    add_column :bsers, :introduction, :string
  end
end
