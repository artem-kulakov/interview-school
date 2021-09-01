class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :schedule, null: false
      t.references :subject, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
