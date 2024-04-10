class State < ApplicationRecord
  default_scope { alphabetically }

  has_many :visits
  has_many :visitors, through: :visits, source: :user

  scope :alphabetically, -> { order(:name) }
  scope :search, ->(q) { q.blank? ? all : where("name LIKE ?", "#{q}%") }

  def to_combobox_display
    name
  end
end
