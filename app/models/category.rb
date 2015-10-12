class Category < ActiveRecord::Base
  has_many :businesses

  validates_presence_of :name, :img

  validates :img, format: {with: /(?:jpg|gif|png)/,
            message: "Images must be one of the formats: '.png', '.jpg', '.jpeg', '.gif'"}

end
