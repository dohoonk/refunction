class TestimonialsController < ApplicationController
  def index
    # @published_testimonials = AdminTestimonial.where(published: true).paginate
    @published_testimonials = AdminTestimonial.paginate(:page => params[:page], :per_page => 6)
    @admin_enquiry = AdminEnquiry.new
  end

  def show
    @testimonial = Testimonial.find(params[:id])
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.save
      redirect_to @testimonial
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def testimonial_params
    params.require(:testimonial).permit(:first_name, :last_name, :title, :description, :published)
  end

end
