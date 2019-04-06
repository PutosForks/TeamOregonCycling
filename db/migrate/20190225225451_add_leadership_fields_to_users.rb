class AddLeadershipFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :team_leader, :boolean, default: false, null: false
    add_column :users, :title, :string
  end
end