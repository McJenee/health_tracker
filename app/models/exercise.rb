class Exercise < ActiveRecord::Base
belongs_to :exercise_type

  def self.burned
    e = self.all.reduce(0) { |s, c| s + c.burn }
    s = Step.all.reduce(0) { |s, c| s + c.step} / 20
    e + s
  end

  def self.daily_burn(date)
    today = Date.today - date.days
    if Exercise.count == 0
      "No data to calculate"
    else
      weight = Exercise.where(date: today).sum(:burn)
      step_burn = Step.where(date: today).sum(:step)/20
      weight + step_burn
    end

  end

end
