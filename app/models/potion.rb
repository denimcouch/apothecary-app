class Potion < ActiveRecord::Base
    has_one :recipe
    has_many :purchases
    has_many :adventurers, through: :purchases

    def slug
        self.name.parameterize
    end
    
    def self.find_by_slug(potion_slug)
        self.all.find{|potion| potion.slug == potion_slug}
    end
end