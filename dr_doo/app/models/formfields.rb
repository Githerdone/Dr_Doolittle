class Formfields < ActiveRecord::Base
	belongs_to :form
	belongs_to :field
  # attr_accessible :title, :body
end
