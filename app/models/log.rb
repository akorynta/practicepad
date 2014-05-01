class Log < ActiveRecord::Base
	validates :title, :description, :user_id, :date, presence: true
	validates :user_id, numericality: {greate_than_or_equal_to: 1}
end
