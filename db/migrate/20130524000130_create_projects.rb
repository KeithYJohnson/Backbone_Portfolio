class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :body
      t.string :title
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
