class User < ActiveRecord::Base
  has_many :apps
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
# don't forget to add a migration for this         
enum role: [:standard, :user]
end
