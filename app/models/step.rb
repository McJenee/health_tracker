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
  def self.daily_steps(date)
    today = Date.today - date.days
    if Step.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      step = Step.where(date: today).sum(:step)
    end
  end

end
