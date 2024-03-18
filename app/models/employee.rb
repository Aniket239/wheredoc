class Employee < ApplicationRecord
has_many :documents
    def self.employee_list
    employees = []
    Employee.all.each do |employee|
        employees +=[[employee.employee_name, employee.id]]
    end
    return employees
    end
end
