class Weight < ActiveRecord::Base
  validates :date, uniqueness: true

  def daily_weight

  end

  def self.average_weight
    self.all.sum(:weight) / self.count
  end
end
