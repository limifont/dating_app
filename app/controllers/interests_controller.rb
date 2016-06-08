class InterestsController < ApplicationController
  before_action :person
  before_action :interest, only: [:show, :edit, :update, :destroy]

  def index
    @interests = @person.interests.all
  end

  def show
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = @person.interests.new(interest_params)
    if @interest.save
      redirect_to account_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @interest.update(interest_params)
      flash[:success] = "Hobby updated!"
      redirect_to account_path
    else
      render :edit
    end
  end

  def destroy
    @interest.destroy
    flash[:success] = "Hobby deleted"
    redirect_to account_path
  end

  private

    def interest_params
      params.require(:interest).permit(:hobby)
    end

    def interest
      @interest = @person.interests.find(params[:id])
    end

    def person
      @person = Person.find(params[:person_id])
    end
end
