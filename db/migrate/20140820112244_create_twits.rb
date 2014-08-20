class CreateTwits < ActiveRecord::Migration
  def change
    create_table :twits do |t|
      t.string :content
      t.references :user, index:true

      t.timestamps
    end
  end
end
