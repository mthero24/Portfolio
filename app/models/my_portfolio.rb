class MyPortfolio < ApplicationRecord
    validates_precence_of :title, :body, :main_image, :thumb_image
end
