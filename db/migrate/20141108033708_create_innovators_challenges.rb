class CreateInnovatorsChallenges < ActiveRecord::Migration
  def change
    create_table :innovators_challenges do |t|
      t.integer :innovator_id
      t.integer :challenge_id

      t.timestamps
    end
  end
end
