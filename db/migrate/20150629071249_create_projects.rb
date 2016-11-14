class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start_time
      t.date :end_time
      t.string :image

      t.timestamps null: false
    end
  end
end
