class HiveSerializer < ActiveModel::Serializer
  attributes :id, :hive_name, :queen_type, :brood_supers, :honey_supers, :hive_location
end
