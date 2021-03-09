class AddOauthToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :oauth, :boolean
  end
end
