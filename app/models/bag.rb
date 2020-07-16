class Bag < ApplicationRecord
  belongs_to :outbound
  validates :number , presence: true  

  def self.search(search)
    if search.blank?
      Bag.all
    else
      Bag.where('number LIKE ?', "%#{search.downcase}%")
    end
  end

  def number_check
    if self.number
      return self.number[0..6]+" "+self.number[7]+" "+self.number[8..12]+" "+self.number[13..17]
    else
      return "-"
    end

  end
  def origin
    number = self.number
    number[8..12]
  end
  def destination
    number = self.number
    number[13..17]
  end

  def service
    number = self.number
    number[7]
  end

  def sub_destination
    number = self.number
    number[13..14]
  end

  
end
