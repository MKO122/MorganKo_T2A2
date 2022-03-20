class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :listings_features, dependent: :destroy
  has_many :features, through: :listings_features

  enum condition: {longing_stares_into_the_horizon: 1, sisyphus: 2, left_at_the_altar: 3, period: 4}
  #unstarted, part way, almost finished, completeduser
  has_one_attached :picture

  #validations 
  validates :title, :description, :price, :condition, presence: true 
  validates :title, length: {minimum: 3}

  private

  def remove_whitespace 
    self.title = self.title.strip
    self.description = self.description.strip
  end

  def convert_price_to_cents 
    self.price = (self.attributes_before_type_cast["price"].to_f * 100).round
  end 

  def remove_pretentiousness
    self.description = self.title.gsub(/timeless/i, "boring")
    self.description = self.title.gsub(/classic/i, "quirky")
    self.description = self.title.gsub(/priceless/i, "cheap")
  end
end
