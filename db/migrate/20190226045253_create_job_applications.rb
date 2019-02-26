class CreateJobApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :job_applications do |t|
      t.string :position
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :message
      t.string :resume

      t.timestamps
    end
  end
end
