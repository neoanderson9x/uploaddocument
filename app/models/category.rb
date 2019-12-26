class Category < ApplicationRecord
  # has_many :documents, optional: true

  validates :name, presence: true, length: {maximum: Settings.name_size_max}
end
