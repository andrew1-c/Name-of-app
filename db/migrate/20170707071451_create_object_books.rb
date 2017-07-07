class CreateObjectBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :object_books do |t|

      t.timestamps
    end
  end
end
