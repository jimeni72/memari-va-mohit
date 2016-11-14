class AddSomethingToUser < ActiveRecord::Migration
  def change
  	add_column :users, :company_name, :string
  	add_column :users, :work_experience, :integer
  	add_column :users, :register_number, :string
  	add_column :users, :tel, :string
  	add_column :users, :fax, :string
  end
end
