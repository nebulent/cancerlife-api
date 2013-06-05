class CreateUsersSitesTable < ActiveRecord::Migration
  def up
    create_table :sites_users do |t|
      t.integer :user_id
      t.integer :site_id
    end
  end

  def down
    drop_table :sites_users
  end
end
