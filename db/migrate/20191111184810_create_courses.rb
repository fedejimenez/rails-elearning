class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string     :title,           null: false, default: ''
      t.text       :description,      null: false, default: ''
      t.decimal    :price,           null: false, default: 0.0, precision: 8, scale: 2
      t.integer    :classes_number,  null: false, default: ''
      t.integer    :students_number
      t.string     :status,          null: false, default: 'not started'
      t.datetime   :start_date
      t.datetime   :end_date
      t.belongs_to :category,        index: true
      t.belongs_to :user,            index: true
      t.timestamps
    end
  end
end
