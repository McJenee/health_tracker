class Weight < ActiveRecord::Base
  validates :date, uniqueness: true

  def daily_weight

  end
end
