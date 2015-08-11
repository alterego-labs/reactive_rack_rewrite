class CreateReactiveRackRewriteRule < ActiveRecord::Migration
  def change
    create_table :reactive_rack_rewrite_rules do |t|
      t.string :method
      t.string :from_pattern
      t.string :to_pattern
      t.timestamps
    end
  end
end

