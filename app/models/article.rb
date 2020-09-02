class Article < ApplicationRecord # every model inherits from applicationrecord
    validates :title, presence: true, length: {minimum: 6, maximum: 100}  # makes it so every article that is saved must have a title. and length restrictions
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
end
