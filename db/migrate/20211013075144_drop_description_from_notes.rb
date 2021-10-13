class DropDescriptionFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :notes, :description
    add_column :notes, :partner, :string
    add_column :notes, :technique, :text
    add_column :notes, :sparring, :text
  end
end
