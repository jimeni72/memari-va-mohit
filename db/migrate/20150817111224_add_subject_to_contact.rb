class AddSubjectToContact < ActiveRecord::Migration
  def change
  	add_column :contacts, :subject, :string
  end
end
