class Subject < ApplicationRecord

  #has_one :page
  has_many :pages

  scope :visible, lambda {where(:visible => true)}
  scope :invisible, lambda {where(:visible => true)}
  scope :sorted, lambda {order("position ASC")}
  scope :newest_first, lambda {order("created_at DESC")}
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

end
