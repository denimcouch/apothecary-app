class Adventurer < ActiveRecord::Base
    has_many :purchases
    has_many :potions, through: :purchases

    def slug
        self.name.parameterize
    end
    
    def self.find_by_slug(adventurer_slug)
        self.all.find{|adventurer| adventurer.slug == adventurer_slug}
    end
end