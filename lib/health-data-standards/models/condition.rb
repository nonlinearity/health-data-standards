class Condition < Entry
  field :type,          type: String
  field :causeOfDeath,  type: Boolean
  field :time_of_death, type: Integer
  field :priority,      type: Integer
  field :name,          type: String
  field :ordinality,    type: Hash
  field :severity,      type: Hash # Currently unsupported by any importers

  embeds_many :treating_provider,  class_name: "Provider"
  
  alias   :cause_of_death         :causeOfDeath
  alias   :cause_of_death=        :causeOfDeath=
end