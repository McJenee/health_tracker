class Weight < ActiveRecord::Base
  validates :date, presence: true, uniqueness: true

  def daily_weight

  end
end
