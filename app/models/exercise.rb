class Exercise < ActiveRecord::Base
belongs_to :exercise_type

  def self.burned
    e = Exercise.all.reduce(0) { |s, c| s + c.burn }
    s = Step.all.reduce(0) { |s, c| s + c.step} / 20
    e + s
  end

  def self.daily_burn_week(date)
    today = Date.today - date.days
    if Exercise.count == 0
      "No data to calculate"
    else
      weight = Exercise.where(date: today).sum(:burn)
      step_burn = Step.where(date: today).sum(:step)/20
      weight + step_burn
    end
  end

  def self.daily_burn
    if Exercise.count == 0
      "No data to calculate"
    else
      burn = Exercise.where(date: Date.today).sum(:burn)
    end
  end

  def self.week_total_exercise
    exercise_week = Exercise.where(date: (Date.today - 7.days)..Date.today)
    step_week = Step.where(date: (Date.today - 7.days)..Date.today)
    if Fuel.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      exercise_week.sum(:burn) + (step_week.sum(:step)/20)
    end
  end
end
