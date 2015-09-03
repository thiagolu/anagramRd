class Dado < ActiveRecord::Base
  validates :word1, presence: true
  validates :word2, presence: true
end
