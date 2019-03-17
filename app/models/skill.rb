class Skill < ApplicationRecord
    validates_precence_of :title, :precent_utilized
end
