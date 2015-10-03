class Step < ActiveRecord::Base

  def self.total_steps
    self.all.reduce(0) { |s, t| s + t.step }
  end
  
end
