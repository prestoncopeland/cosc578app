class TutorsSubjects < ActiveRecord::Migration
  def change
    create_table :tutors_subjects do |t|
     t.references :employee, index: true
     t.string :subject
     t.timestamps
   end
  end
end
