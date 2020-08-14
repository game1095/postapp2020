class Parcel < ApplicationRecord
  belongs_to :internal
  validates :number , presence: true , length: {in: 13..13}
  def parcel_number_check
    if self.number
      return self.number[0..1]+" "+self.number[2..5]+" "+self.number[6..9]+" "+self.number[10]+" "+self.number[11..12]
    end
  end
end
