class CreateWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :weeks do |t|
      t.string :name
      t.string :year
      t.string :number_of_week

      t.timestamps
    end
  end
end
