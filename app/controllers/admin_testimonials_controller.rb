class AdminTestimonialsController < ApplicationController
  before_action :logged_in_check
  
  def index
    @published_testimonials = AdminTestimonial.where(published: true)
    @archived_testimonials = AdminTestimonial.where(published: false)
  end

  def show
  end

  def new
    @testimonial = AdminTestimonial.new
  end

  def create
    @testimonial = AdminTestimonial.new(testimonial_params)
    if params[:commit] == "Save & Publish"
      @testimonial.published = true
    else
      @testimonial.published = false
    end

    if @testimonial.save
      flash[:success] = "Testimonial Created"
      redirect_to admin_testimonials_path
    else
      flash[:error] = "Please Try Again"
      render 'new'
    end
  end



  def edit
    @testimonial = AdminTestimonial.find(params[:id])
  end

  def update
    @testimonial = AdminTestimonial.find(params[:id])
    if @testimonial.update_attributes(testimonial_params)
      flash[:success] = "Testimonial Edited"
      redirect_to admin_testimonials_path
    else
      render 'edit'
    end
  end


  def destroy
    @testimonial = AdminTestimonial.find(params[:id])
    @testimonial.destroy
    redirect_to admin_testimonials_path
  end

  def archive
    @testimonial = AdminTestimonial.find(params[:id])
    if @testimonial.published == true
      @testimonial.published = false
    else
      @testimonial.published = true
    end
    @testimonial.save
    redirect_to admin_testimonials_path
  end

  private

  def testimonial_params
    params.require(:admin_testimonial).permit(:first_name, :last_name, :title, :description, :published)
  end

end
