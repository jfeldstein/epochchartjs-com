class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.string :owner_name
      t.string :owner_email
      t.string :calendar_url
      t.string :title
      t.string :data_url

      t.timestamps
    end
  end
end
