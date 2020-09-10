class Client < ApplicationRecord
    has_many :pets
    delegate :count, to: :pets, prefix: true


    def maximum_weight
        pet.pet_histories.maximum(:weight)
    end

    def maximum_height
        pet.pet_histories.maximum(:height)
    end
end
