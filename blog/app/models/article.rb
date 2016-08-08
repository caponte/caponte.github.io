class Article < ActiveRecord::Base
	validates :tittle, presence: true
	validates :body, presence: true, length: {minimum: 20}
	
end
