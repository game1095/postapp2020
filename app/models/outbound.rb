class Outbound < ApplicationRecord
  has_many :bags

  def self.search(search)
  	if search.blank?
  		Outbound.all
  	else
  		Outbound.where('outbound_number LIKE ?', "%#{search.downcase}%")
  	end
  end
end
