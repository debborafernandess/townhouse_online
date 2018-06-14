class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :townhouse_area

  validates :user, :reserved_to, presence: true
  validates :townhouse_area,
    presence: true,
    uniqueness: { scope: [:townhouse_area, :reserved_to] }

  scope :expired,     -> { where('reserved_to < ?', Date.current) }
  scope :not_expired, -> { where('reserved_to >= ?', Date.current) }

  def active?
    reserved_to >= Date.current
  end
end
