class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :status
      t.integer :user_id

      t.timestamps
    end
  end
end
