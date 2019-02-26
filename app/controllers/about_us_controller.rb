class AboutUsController < ApplicationController

  def index
    @admin_enquiry = AdminEnquiry.new
  end

end
