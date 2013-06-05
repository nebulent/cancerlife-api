class CreateSitesTable < ActiveRecord::Migration
  def up
    create_table :sites do |t|
      t.string :subdomain

      t.timestamps
    end
  end

  def down
    drop_table :sites
  end
end
