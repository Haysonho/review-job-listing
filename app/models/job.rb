class Job < ApplicationRecord
  validates :title, :description, presence: true
  validates :wage_lower_boune, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_boune, numericality: { greater_than: 0}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end


end
