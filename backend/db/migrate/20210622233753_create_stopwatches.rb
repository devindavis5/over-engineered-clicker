class CreateStopwatches < ActiveRecord::Migration[6.0]
  def change
    create_table :stopwatches do |t|
      t.time :time

      t.timestamps
    end
  end
end
