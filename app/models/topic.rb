class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  scope :private, -> { where(public: false) }
  scope :public, -> { where(public: true) }
  scope :visible_to, -> (user) { user ? all : where(public: true) }

end
