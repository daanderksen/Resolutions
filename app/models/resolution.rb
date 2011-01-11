class Resolution < ActiveRecord::Base

  validates :resolution,  :presence => true,
                          :length => { :minimum => 10, :maximum => 250 }
				       
  
  has_many :intends
  has_many :users, :through => :intends
  
	
end
