require 'rails_helper'

RSpec.describe Address, type: :model do

   describe 'attributes' do
    it {should respond_to :street}
    it {should respond_to :city}
    it {should respond_to :state}
    it {should respond_to :country}
    it {should respond_to :zipcode}
  end

  describe 'instance methods' do
    before(:each) do
      @address = Address.create(street: '4371 Inverary Drive',
                                city: 'Holladay',
                                state: 'Utah',
                                country: 'United States',
                                zipcode: 84124)
      @COUNTRIES = ['United States', 'Canada']
      @STATES = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisana', 'Maine', 'Maryland', 'Massachuessets', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Viginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming', 'Ontario', 'Quebec', 'Nova Scotia', 'New Brunswick', 'Manitoba', 'British Columbia', 'Prince Edward Island', 'Saskatchewan', 'Alberta', 'Newfoundland and Labrador']


    end

    it 'shows country options' do
      expect(Address.countries).to eq(@COUNTRIES)
    end

    it 'shows state options' do
      expect(Address.states).to eq(@STATES)
    end

    it 'is included in' do

    end
  end

end