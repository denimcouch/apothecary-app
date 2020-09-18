class Purchase < ActiveRecord::Base
    belongs_to :adventurer
    belongs_to :potion
end