class User < ApplicationRecord
  has_many :followers
  has_many :votes

  has_many :polls, through: :votes
  has_many :polls
end
