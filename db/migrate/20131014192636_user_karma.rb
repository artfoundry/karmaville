class UserKarma < ActiveRecord::Migration
  def change
    create_table :user_karma_points do |t|
      t.integer :user_id
      t.integer :value
    end
  end
end
