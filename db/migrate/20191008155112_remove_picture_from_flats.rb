class RemovePictureFromFlats < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :picture, :string
  end
end
