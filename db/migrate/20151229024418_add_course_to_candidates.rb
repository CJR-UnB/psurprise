class AddCourseToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :course, :string
  end
end
