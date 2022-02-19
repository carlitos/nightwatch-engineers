class AddFieldDayReferencesToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_reference :schedules, :day, null: true, foreign_key: true
  end
end
