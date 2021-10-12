# frozen_string_literal: true

class AddUserIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :user_id, :integer
  end
end
