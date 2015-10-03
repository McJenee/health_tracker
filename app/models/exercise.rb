class Exercise < ActiveRecord::Base
belongs_to :exercise_type

  def self.burned
    self.all.reduce(0) { |s, c| s + c.burn }
  end

end
