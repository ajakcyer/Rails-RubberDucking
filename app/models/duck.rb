class Duck < ApplicationRecord

    belongs_to :student



    def student_attributes=(student)
        self.student = Student.find_or_create_by(name: student[:name], mod: student[:mod])
        self.student.update(student)
    end



    
end
