class Document < ApplicationRecord
    belongs_to :department
    belongs_to :employee
end
