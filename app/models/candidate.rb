class Candidate < ActiveRecord::Base
    validates :name, :email, :telephone, :semester, presence: true
end
