class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.datetime :date
      t.string :title
      t.string :body
      t.integer :vote

      t.timestamps
    end
  end
end
