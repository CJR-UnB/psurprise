class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.boolean :approved
      t.integer :semester

      t.timestamps null: false
    end
  end
end
