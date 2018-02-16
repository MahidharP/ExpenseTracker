class Loan < ActiveRecord::Base
  belongs_to :basicpay
  validates_presence_of :name,:bill,:month,:basicpay_id,:balance

end
