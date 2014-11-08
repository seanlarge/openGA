class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.datetime :date
      t.integer :innovator_id
      t.integer :challenge_id
      t.integer :vote
      t.string :body

      t.timestamps
    end
  end
end
