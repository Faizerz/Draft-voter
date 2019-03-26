class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :votes
  has_many :polls, through: :votes
  has_many :polls

  def followers
    Follower.where("followed_id = #{id}")
  end

  def following
    Follower.where("follower_id = #{id}")
  end
end
