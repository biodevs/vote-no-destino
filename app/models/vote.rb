class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  scope :ranking, -> {group(:destination_id).order("count_destination_id desc").count(:destination_id)}
end
