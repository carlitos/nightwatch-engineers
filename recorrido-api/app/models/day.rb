class Day < ApplicationRecord
  belongs_to :week
  has_many :schedules

  def friendly_day_name
    day_of_week.strftime("%A %d of %B")
  end

end
