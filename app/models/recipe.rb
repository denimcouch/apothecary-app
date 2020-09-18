class Recipe < ActiveRecord::Base
    belongs_to :potion

    def slug
        self.name.parameterize
    end
    
    def self.find_by_slug(recipe_slug)
        self.all.find{|recipe| recipe.slug == recipe_slug}
    end
end