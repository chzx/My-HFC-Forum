class Post < ActiveRecord::Base
  validates_presence_of :content
  validates_presence_of :category

  belongs_to :user, :dependent=>:destroy
  has_many :likes, :dependent=>:destroy
  has_many :comments
end
