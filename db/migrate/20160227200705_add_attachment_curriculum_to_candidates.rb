class AddAttachmentCurriculumToCandidates < ActiveRecord::Migration
  def self.up
    change_table :candidates do |t|
      t.attachment :curriculum
    end
  end

  def self.down
    remove_attachment :candidates, :curriculum
  end
end
