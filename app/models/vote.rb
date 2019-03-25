class Vote < ApplicationRecord
  belongs_to :user, :poll
end
