class Internal < ApplicationRecord
  has_many :parcel

  def internal_count
    self.parcel.count
  end
end
