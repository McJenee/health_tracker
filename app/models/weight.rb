class Weight < ActiveRecord::Base
  validates :date, uniqueness: true

  def daily_weight

  end

  def self.average_weight
    self.all.sum(:weight) / self.count
  end

  def self.average_weight_week
    week = self.where(date: (Date.today - 7.days)..Date.today)
    if week.count == 0
      "No data"
    else
      week.sum(:weight) / week.count
    end
  end
end
