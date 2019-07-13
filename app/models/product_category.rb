class ProductCategory < ApplicationRecord
    has_many :product
    # # has_many :objects, class_name: "object", foreign_key: "reference_id"
end
