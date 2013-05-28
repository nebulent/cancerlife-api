class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :email
      t.boolean :donate_info
      t.string  :first_name
      t.string  :last_name
      t.boolean :journal_reminder
      t.integer :level
      t.boolean :verified_email
      t.string  :password
      t.integer :roles
      t.boolean :update_via_sms
      
      t.timestamps
    end
  end
end
