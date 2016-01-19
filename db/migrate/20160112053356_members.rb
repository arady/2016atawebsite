class Members < ActiveRecord::Migration
  def change
  	add_column :members, :requirments, :text
  end
end
