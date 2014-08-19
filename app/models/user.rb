class User < ActiveRecord::Base
  has_many :twits, dependent: :destroy

  validates :email,  presence: true,
            length: { minimum: 5 }
  validates_presence_of :name, :surname
end
