class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    @duck.build_student
  end

  def create
    duck = Duck.create(duck_params)
    if duck.valid?
      redirect_to duck_path(duck)
    else
      flash[:my_errors] = duck.errors.full_messages
      redirect_to new_duck_path
    end
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id, student_attributes: [:name, :mod])
  end
end
