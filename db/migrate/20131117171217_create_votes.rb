class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :coffee
      t.string :email

      t.timestamps
    end
  end
end
