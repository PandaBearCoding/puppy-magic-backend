class EnvironmentPreferencesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :environment_id

  has_one :user
  has_one :environment
end
