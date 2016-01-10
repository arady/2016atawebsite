class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :title
      t.string :video
      t.text :description
      t.string :web_title
      t.string :meta_description

      t.timestamps null: false
    end
  end
end
