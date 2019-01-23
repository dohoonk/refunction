class HomeController < ApplicationController
  def index
    @published_testimonials = AdminTestimonial.where(published: true).sample(3)
    @admin_enquiry = AdminEnquiry.new
    @featured_teams = AdminTeam.order("RANDOM()").limit(4)
  end

  def faq
    @admin_enquiry = AdminEnquiry.new
  end
end
