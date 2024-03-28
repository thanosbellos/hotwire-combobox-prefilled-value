class User < ApplicationRecord
  belongs_to :movie

  scope :search, ->(q) { q.blank? ? all : where("name LIKE ?", "#{q}%") }

  validates :name, presence: true

  def to_combobox_display
    name
  end
end
