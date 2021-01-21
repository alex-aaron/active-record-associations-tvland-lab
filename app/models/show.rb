class Show < ActiveRecord::Base
    has_many :actors, through: :characters
    belongs_to :network
    
    def actors_list
    end
end