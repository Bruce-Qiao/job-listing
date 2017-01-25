class Job < ApplicationRecord

  def publish!
    self.is_hidden=false
    self.save
  end

  def hide!
    self.is_hidden=true
    self.save
  end

  # belongs_to :user, optional: true
  belongs_to :user
  has_many :resumes
  validates :title, presence: true

  validates :wage_lower_bound, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, numericality: {greater_than: 0}
  validates :wage_upper_bound, numericality: {greater_than: 0}
end
