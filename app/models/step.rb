class Step < ActiveRecord::Base

  def self.total_steps
    self.all.reduce(0) { |s, t| s + t.step }
  end

  def self.average_step_week
    week = self.where(date: (Date.today - 7.days)..Date.today)
    if week.count == 0
      "No data"
    else
      week.sum(:step) / week.count
    end
  end

  ### WORK ON THIS
  def self.daily_steps_week(date)
    today = Date.today - date.days
    if Step.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      step = Step.where(date: today).sum(:step)
    end
  end

  def self.daily_steps
    if Step.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      step = Step.where(date: Date.today).sum(:step)
    end
  end

  def self.week_total_steps
    step_week = Step.where(date: (Date.today - 7.days)..Date.today)
    if Fuel.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      step_week.sum(:step)
    end
  end

end
