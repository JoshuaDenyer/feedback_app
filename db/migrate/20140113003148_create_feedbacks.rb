class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.string :feedback
      t.integer :devices
      t.integer :orgId
      t.string :url

      t.timestamps
    end
  end
end
