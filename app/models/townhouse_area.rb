class TownhouseArea < ApplicationRecord
  enum area_type: { barbecue_grill: 1, party_room: 2, tower: 0 }
  enum property_type: { private_property: 'private_property', shared: 'shared' }
end
