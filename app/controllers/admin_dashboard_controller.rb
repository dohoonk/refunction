class AdminDashboardController < ApplicationController
  before_action :logged_in_check
  def index
    @visits = Ahoy::Visit.where(started_at: Date.today - 7...Date.today + 2)
    @events = Ahoy::Event.where(time: Date.today - 7...Date.today + 2)
    @visits_last_ten = Ahoy::Visit.last(10)
    @array = []
    Ahoy::Event.all.each do |f|
      @array << f.properties["controller"]
    end
    @visits_today = Ahoy::Visit.where(started_at: Date.today...Date.today + 2).count

    @visits_this_week = Ahoy::Visit.where(started_at: Date.today - 7...Date.today + 2).count

    @visits_this_month = Ahoy::Visit.where(started_at: Date.today - 32...Date.today + 2).count

    @b = Hash.new(0)

    @array.each do |v|
      @b[v] += 1
    end

    # b.each do |k, v|
    #   puts "#{k} appears #{v} times"
    # end

  end
end
