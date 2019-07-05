class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :value
      t.string :type
      t.belongs_to :quiz
      
      t.timestamps
    end
  end
end
