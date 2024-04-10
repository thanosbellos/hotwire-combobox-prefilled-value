class User < ApplicationRecord
  belongs_to :movie

  scope :search, ->(q) { q.blank? ? all : where("name LIKE ?", "#{q}%") }

  validates :name, presence: true

  has_many :visits
  has_many :visited_states, through: :visits, source: :state

  def to_combobox_display
    name
  end
end
