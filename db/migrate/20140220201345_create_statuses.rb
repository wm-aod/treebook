class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.text :content

      t.timestamps
    end

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_name, :string
  end
end
