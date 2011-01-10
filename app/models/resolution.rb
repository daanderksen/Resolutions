class Resolution < ActiveRecord::Base

  validates :resolution,  :presence => true,
                          :length => { :minimum => 10, :maximum => 40 }
				       
	has_and_belongs_to_many :users
	
end
