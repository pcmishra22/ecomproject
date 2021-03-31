class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

     
  belongs_to :role
  has_many :items, dependent: :destroy

  validates :name, presence: true
  before_save :assign_role

   def assign_role
    self.role = Role.find_by name: 'User' if role.nil?
  end

  def admin?
  role.name == 'admin'
  end
  
  def user?
  role.name == 'user'
  end

  def superuser?
  role.name == 'superuser'
  end
end
