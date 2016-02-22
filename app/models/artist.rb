class Artist < ActiveRecord::Base
	has_many:releases, dependent:  :destroy
	has_many:userArtists, dependent:  :destroy
end
