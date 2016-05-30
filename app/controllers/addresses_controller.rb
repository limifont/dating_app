class AddressesController < ApplicationController
  before_action :person
  before_action :address, only: [:show, :edit, :update, :destroy]
  

  def index
    @addresses = Address.all
  end

  def show
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:success] = "Address saved"
      redirect_to person_path(@person)
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @address.update(address_params)
      flash[:success] = "Address updated!"
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    flash[:success] = "Address deleted"
    redirect_to person_path(@person)
  end

  private

    def address_params
      params.require(:address).permit(:street,
                                       :city,
                                       :country,
                                       :state,
                                       :zipcode)
    end

    def address
      @address = @person.addresses.find(params[:id])
    end

    def person
      @person = Person.find(params[:person_id])
    end

end
