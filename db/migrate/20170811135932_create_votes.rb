class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :destination, index: true, foreign_key: true

      t.timestamps
    end
  end
end
