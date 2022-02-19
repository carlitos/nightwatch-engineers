class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.date :day_of_week
      t.references :week, null: false, foreign_key: true

      t.timestamps
    end
  end
end
