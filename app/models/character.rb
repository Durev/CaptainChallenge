class Character < ApplicationRecord

  validates :name, presence: true, length: { maximum: 70 }
  validates :health_points, presence: true, numericality: { greater_than_or_equal_to: 50,
                                                            less_than_or_equal_to: 100 }
  validates :attack_points, presence: true, numericality: { greater_than_or_equal_to: 5,
                                                            less_than_or_equal_to: 20 }
  # validates :img_url, format: { with: URL_REGEX }
  validates :bio, length: { maximum: 300 }
end
