class DaySerializer < ActiveModel::Serializer
  attributes :id, :friendly_day_name
  belongs_to :week
  has_many :schedules
end
