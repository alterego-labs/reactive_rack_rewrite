class CreateReactiveRackRewriteRule < ActiveRecord::Migration
  def change
    create_table :reactive_rack_rewrite_rules do |t|
      t.string :method
      t.string :from
      t.string :to
      t.timestamps
    end
  end
end

