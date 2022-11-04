class User < ApplicationRecord
  has_many :tasks

  DEFAULT_USER = User.find_by(name: 'Astérix')
end
