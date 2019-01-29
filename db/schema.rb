# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_170_526_114_520) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'posts', force: :cascade do |t|
    t.string 'message'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
