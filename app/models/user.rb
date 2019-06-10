class User < ApplicationRecord
  has_many :documents
  has_many :downloads
  has_many :favorites
  has_many :reads
  has_many :comments
  has_many :active_relationships, class_name: Relationship.name,
    foreign_key: :user_one, dependent: :destroy
  has_many :passive_relationships, class_name: Relationship.name,
    foreign_key: :user_two, dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
end
