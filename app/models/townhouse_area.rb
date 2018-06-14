class TownhouseArea < ApplicationRecord
  enum area_type: { barbecue_grill: 'barbecue_grill', party_room: 'party_room', tower: 'tower' }
  enum property_type: { private_property: 'private_property', shared: 'shared' }

  validates :area_type, presence: true
  validates :name, presence: true, uniqueness: true
end
