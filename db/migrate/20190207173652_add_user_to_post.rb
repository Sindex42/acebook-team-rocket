# frozen_string_literal: true

class AddUserToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :user_id, :integer
  end
end
