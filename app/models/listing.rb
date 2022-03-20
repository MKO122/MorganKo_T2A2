class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :listings_features, dependent: :destroy
  has_many :features, through: :listings_features

  enum condition: {longing_stares_into_the_horizon: 1, sisyphus: 2, left_at_the_altar: 3, period: 4}
  #unstarted, part way, almost finished, completeduser
  has_one_attached :picture
end
