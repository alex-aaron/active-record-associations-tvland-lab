class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    
    def actors_list
        actors_array = []
        self.actors.each do |actor|
            actor_listing = actor.full_name
            actors_array << actor_listing
        end
        actors_array
    end
end