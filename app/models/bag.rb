class Bag < ApplicationRecord
  belongs_to :outbound
  def number_check
    if self.number
      return self.number
    else
      return "-"
    end

  end
  def origin
    number = self.number
    number.slice(8..12)
  end

  def destination
    number = self.number
    number.slice(13..17)
  end

  def service
    number = self.number
    number.slice(7)
  end
end
