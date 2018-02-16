class Investment < ActiveRecord::Base
  belongs_to :basicpay
  validates_presence_of :name,:amount,:basicpay_id,:month,:total
end
