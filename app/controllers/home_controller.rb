# home to see his spendings
class HomeController < ApplicationController
  before_action :authenticate_user!

  def activity
    @night_shift = NightShift.new
    @loan = Loan.new
    
  end
end