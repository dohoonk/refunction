class ServicesController < ApplicationController
  def index
  end

  def show
    @service = Service.first
  end
end
