class AddKarmaTotalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karmatotal, :integer
    # User.update_all("karmatotal = ?", User.find(:id).total_karma)
    add_index :users, :karmatotal
  end
end
