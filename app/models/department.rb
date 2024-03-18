class Department < ApplicationRecord
    has_many :documents

        def self.department_list
        departments = []
        Department.all.each do |department|
            departments += [[department.name, department.id]]
        end
        return departments
        end

end
