class Interest < ActiveRecord::Base
  belongs_to :person

  HOBBY = ['Art',
           'Baking',
           'Cooking',
           'Dance',
           'Entrepreneurship',
           'Film',
           'Gardening',
           'Hiking',
           'Ice Skating',
           'Journaling',
           'Knitting',
           'Languages',
           'Music',
           'Nature',
           'Outdoors',
           'Politics',
           'Quilting',
           'Rock climbing',
           'Sports',
           'Traveling',
           'Ultimate Frisbee',
           'Volunteering',
           'Writing',
           'Yoga',
           'Zumba']

  validates :hobby, inclusion: {in: HOBBY}

  def self.hobbies
    HOBBY
  end
end
