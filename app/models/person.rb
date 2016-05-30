class Person < ActiveRecord::Base
  has_many :interests
  has_one :address
  has_secure_password
  
  GENDER = ['Male', 'Female']
  HEIGHT = ["4'10", "4'11", "5'0", "5'1", "5'2", "5'3", "5'4", "5'5", "5'6", "5'7", "5'8", "5'9", "5'10", "5'11", "6'0", "6'1", "6'2", "6'3", "6'4", "6'5", "6'6", "6'7", "6'8", "6'9", "6'10", "6'11", "7'0"]
  HAIR_COLOR = ['Blonde', 'Brown', 'Dark Brown', 'Black', 'Red', 'Grey', 'White', 'Other']
  EYE_COLOR = ['Brown', 'Green', 'Hazel', 'Blue', 'Black']
  RELIGION = ['Christian', 'Jewish', 'Muslim', 'LDS', 'Agnostic', 'Athiest']
  validates_presence_of :username,
                        :password,
                        :email_address,
                        :first_name,
                        :last_name,
                        :gender

  validates :gender, inclusion: {in: GENDER}
  validates :height, inclusion: {in: HEIGHT}
  validates :hair_color, inclusion: {in: HAIR_COLOR}
  validates :eye_color, inclusion: {in: EYE_COLOR}
  validates :religion, inclusion: {in: RELIGION}
  validates :smoke, :drink, inclusion: {in: [true, false]}


  def self.by_name
    order(:first_name)
  end

  def self.genders
    GENDER
  end

  def self.heights
    HEIGHT
  end

  def self.hair_colors
    HAIR_COLOR
  end

  def self.eye_colors
    EYE_COLOR
  end

  def self.religions
    RELIGION
  end
end
