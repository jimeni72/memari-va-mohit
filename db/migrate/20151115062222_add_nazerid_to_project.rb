class AddNazeridToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :nazer_id, :integer
  end
end
