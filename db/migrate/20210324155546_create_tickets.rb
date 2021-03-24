class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :movie_id

      t.string :date

      t.timestamps
    end
  end
end
