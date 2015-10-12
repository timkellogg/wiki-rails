class Business < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :name, :phone, :description
  validates :url, format: { with: /(?:http:\/\/|https:\/\/)/,
            message: "%{value} needs to include http:// or https://" }
  validates :url, format: { with: /(?:.com)/,
            message: "%{value} needs to have a domain ending (i.e. '.com')"}
  validates :img, format: { with: /(?:jpg|gif|png)/,
            message: "Images must be one of the formats: '.png', '.jpg', '.jpeg', '.gif'"}
end
