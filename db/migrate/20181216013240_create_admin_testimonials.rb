class CreateAdminTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_testimonials do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.text :description
      t.boolean :published
      t.timestamps
    end
  end
end
