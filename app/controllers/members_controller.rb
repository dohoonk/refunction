class MembersController < ApplicationController
  def show
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :middle_name, :last_name, :description)
  end
end
