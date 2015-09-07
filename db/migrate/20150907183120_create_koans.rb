class CreateKoans < ActiveRecord::Migration
  def change
    create_table :koans do |t|

    	t.string :saying
    	t.string :author

      t.timestamps
    end
  end
end
