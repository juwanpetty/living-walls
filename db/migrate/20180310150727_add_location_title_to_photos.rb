class AddLocationTitleToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :location_title, :string
  end
end
