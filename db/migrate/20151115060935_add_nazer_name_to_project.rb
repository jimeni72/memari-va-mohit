class AddNazerNameToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :nazer_name, :string
  	
  end
end
