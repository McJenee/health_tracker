class Exercise < ActiveRecord::Base
belongs_to :exercise_type

  def self.burned
    self.all.reduce(0) { |s, c| s + c.burn }
  end

  def self.daily_burn(date)
    today = Date.today - date.days
    if Exercise.count == 0
      "No data to calculate"
    else
      weight = Exercise.where(date: today).sum(:burn)
    end
  end

end
