class First < ApplicationRecord
  has_many :seconds
  has_many :thirds


  def self.or_query
    self.joins(:seconds)
        .joins(:thirds)
        .where("thirds.name = ? OR seconds.name = ?", "b", "b")
  end

  def self.priority_query
    self.joins(:seconds)
        .joins(:thirds)
        .where("(thirds.id > ? AND thirds.id < ?) OR seconds.name = ?",
          "1",
          "3",
          "b")
  end
  def self.left_join
    First.includes(:seconds).where(seconds: {name: "b"}).first.seconds
  end
end
