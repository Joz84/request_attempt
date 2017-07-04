class First < ApplicationRecord
  has_many :seconds
  has_many :thirds


  def self.full_join
    self.joins(:seconds)
        .joins(:thirds)
        .where("thirds.name = ? OR seconds.name = ?", "b", "b")
  end
end
