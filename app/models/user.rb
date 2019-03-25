class User < ApplicationRecord
  belongs_to :user_type
  has_many :followers, :votes

  has_many :polls, through: :votes
  has_many :polls
end
