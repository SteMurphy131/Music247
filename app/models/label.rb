class Label < ActiveRecord::Base
	has_many:releases, dependent:  :destroy
	has_many:userLabels, dependent:  :destroy
end
