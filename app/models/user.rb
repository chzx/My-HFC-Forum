class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :likes
  has_many :comments

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def last_initial
    self.last_name.try(:first)
  end

  def display_name
    "#{self.first_name} #{self.last_initial}."
  end

end
