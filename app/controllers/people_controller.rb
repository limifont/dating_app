class PeopleController < ApplicationController
  before_action :person, except: [:index, :new, :create]
  before_action :require_user, only: [:index, :show]

  def index
    @people = Person.all.by_name
  end

  def show
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:success] = "Welcome, #{@person.first_name}!"
      session[:person_id] = @person.id
      redirect_to new_person_address_path(@person)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @person.update(person_params)
      flash[:success] = "Thank you for updating your profile, #{@person.first_name}!"
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

  def destroy
    person_name = @person.first_name
    @person.destroy
    flash[:success] = "Thank you for using the dating app, #{person_name}!"
    redirect_to root_path
  end

  private

    def person_params
      params.require(:person).permit(:username,
                                     :password,
                                     :email_address,
                                     :first_name,
                                     :last_name,
                                     :gender,
                                     :height,
                                     :hair_color,
                                     :eye_color,
                                     :weight,
                                     :religion,
                                     :smoke,
                                     :drink,
                                     :about_me
                                     )
    end  
      
    def person
      @person = Person.find(params[:id])
    end
end
