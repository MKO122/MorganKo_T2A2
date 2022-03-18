class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category

  enum condition: {longing_stares_into_the_horizon: 1, sisyphus: 2, left_at_the_altar: 3, period: 4}
  #unstarted, part way, almost finished, completeduser
end
