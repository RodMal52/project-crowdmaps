class Location < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
  

  def self.paged(page_number)
    order(address: :desc).page page_number
  end
  
  def self.search_and_order(search, page_number)
    if search
      where("address LIKE ?", "%#{search.downcase}%").order(
      address: :desc
      ).page page_number
    else
      order(address: :desc).page page_number
    end
  end
  

end