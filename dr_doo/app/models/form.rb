class Form < ActiveRecord::Base
	belongs_to :provider
	has_many :formfields
	has_many :fields, through: :formfields
  # attr_accessible :title, :body
end
