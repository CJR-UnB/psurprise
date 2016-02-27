class Candidate < ActiveRecord::Base
	has_attached_file :curriculum
	validates_attachment :curriculum, :content_type => { :content_type => %w(application/pdf) }

  validates :name, :email, :telephone, :semester, presence: true
end
