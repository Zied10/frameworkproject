class Chapitre < ActiveRecord::Base
  belongs_to :user
  has_many :scenes
  has_many :anecdotes
  validates :user_id, presence: true
  validates :number, presence: true
  validates :title, presence: true
  
end
