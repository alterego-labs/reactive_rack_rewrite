require 'rails/generators/migration'

module ReactiveRackRewrite
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "Add migration"

      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        migration_template "create_reactive_rack_rewrite_rule.rb", "db/migrate/create_reactive_rack_rewrite_rule.rb"
      end
    end
  end
end

