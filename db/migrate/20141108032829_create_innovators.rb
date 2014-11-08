class CreateInnovators < ActiveRecord::Migration
  def change
    create_table :innovators do |t|
      t.string :user_name
      t.string :about_me
      t.string :links
      t.string :classes_taken
      t.string :technical_skills

      t.timestamps
    end
  end
end
