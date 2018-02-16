class Basicpay < ActiveRecord::Base
	has_many :loans
	has_many :investments
	has_many :night_shifts

	validates_presence_of :salary
end
