class CreateUrlShortners < ActiveRecord::Migration[5.1]
  def change
    create_table :url_shortners do |t|
      t.string :short_url
      t.string :long_url

      t.timestamps
    end
  end
end
