class Scene < ActiveRecord::Base
  has_many :persones
  belongs_to :anecdote
  belongs_to :user
  validates :user_id, presence: true
  validates :text, presence: true
  validates :lieu, presence: true
  validates :lieu, presence: true
end
