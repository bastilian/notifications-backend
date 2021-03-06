# frozen_string_literal: true

class EndpointSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :url, :active
  attribute :filter_count do |object|
    object.filters.size
  end
end
