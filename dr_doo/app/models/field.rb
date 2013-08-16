class Field < ActiveRecord::Base
	has_many :formfields
	has_many :forms, through: :formfields
	has_many :stringanswers
	has_many :dateanswers
	has_many :integeranswers
	has_many :booleananswers
  # attr_accessible :title, :body
end
