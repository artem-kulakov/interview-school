class ChangeDataTypeOfSectionDates < ActiveRecord::Migration[6.0]
  def change
    change_column :sections, :start_time, :time
    change_column :sections, :end_time, :time

    add_index :sections, :start_time
    add_index :sections, :end_time
    add_index :sections, [:schedule, :start_time, :end_time]
  end
end
