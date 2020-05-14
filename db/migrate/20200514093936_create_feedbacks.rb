class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :topic
      t.string :comment
      t.string :name
      	
      t.timestamps
    end
  end
end
