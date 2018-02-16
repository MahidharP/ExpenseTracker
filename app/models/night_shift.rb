class NightShift < ActiveRecord::Base
  belongs_to :basicpay
  validates_presence_of :date,:claim,:basicpay_id
end
