class Anecdote < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :sujet, presence: true
  validates :text, presence: true
  validates :theme, presence: true

end
