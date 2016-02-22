class Release < ActiveRecord::Base
	has_many:tracks, dependent:  :destroy
	
	belongs_to:artist
	belongs_to:label
end
