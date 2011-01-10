class Resolution < ActiveRecord::Base
  validates :resolution,  :presence => true,
                          :length => { :minimum => 10 }
end
