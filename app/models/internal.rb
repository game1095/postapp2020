class Internal < ApplicationRecord
  has_many :parcel , dependent: :destroy
  def internal_count
    self.parcel.count
  end
end
