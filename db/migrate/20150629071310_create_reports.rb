class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name_project
      t.text :description
      t.string :title_report
      t.string :subject

      t.timestamps null: false
    end
  end
end
