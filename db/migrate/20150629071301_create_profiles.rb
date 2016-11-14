class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :company_name
      t.integer :work_experience
      t.integer :register_number
      t.string :tel
      t.string :fax
      t.string :image

      t.timestamps null: false
    end
  end
end
