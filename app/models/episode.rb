class Episode < ApplicationRecord
  validates :eptitle, presence: true
  validates :show, presence: true
end
