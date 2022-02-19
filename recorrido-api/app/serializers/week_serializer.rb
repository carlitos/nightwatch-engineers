class WeekSerializer < ActiveModel::Serializer
  attributes :id, :year, :number_of_week, :days_values

  def days_values
    object.days.collect do |ov|
      {
          id: ov.id,
          day: ov.friendly_day_name,
          schedules: ov.schedules.collect do |s|
            {
              schedule_id: s.id,
              schedule: s.schedule
            }
          end
       }
    end
  end


end
