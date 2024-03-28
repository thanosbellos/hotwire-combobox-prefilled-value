class User < ApplicationRecord
  scope :search, ->(q) { q.blank? ? all : where("name LIKE ?", "#{q}%") }

  validates :name, presence: true

  def to_combobox_display
    name
  end
end
