class AddFieldsToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :progress_percent, :integer
  	add_column :projects, :karfarma_name, :string
  end
end
