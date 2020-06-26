class Outbound < ApplicationRecord
  has_many :bags

  def self.search(search)
  	if search.blank?
  		Outbound.all
  	else
  		Outbound.where('outbound_number LIKE ?', "%#{search}%")
  	end
  end

  def name_check
  	if self.name != nil
  		return self.name
  	else
  		return "-"
  	end
  end

  def count
    self.bags.count
  end

  def check_remark
    if self.remark != nil
      return self.remark
    else
      return "-"
    end
  end
end
