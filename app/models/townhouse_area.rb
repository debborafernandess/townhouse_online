class TownhouseArea < ApplicationRecord
  enum area_type: { barbecue_grill: 'barbecue_grill', party_room: 'party_room', tower: 'tower' }
  enum property_type: { private_property: 'private_property', shared: 'shared' }

  validate :area_type, :name
end
