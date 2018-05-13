# frozen_string_literal: true

json.generations @generations do |generation|
  json.name generation.name
  json.level generation.level
  json.family_id generation.family_id
end
