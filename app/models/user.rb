class User < ApplicationRecord

  has_many :comments

  validates :name, presence: true
  validates :id, uniqueness: true, presence: true

end
