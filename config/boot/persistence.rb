# frozen_string_literal: true

Hanami.application.register_bootable :persistence, namespace: true do |container|
  init do
    require "rom-changeset"
    require "rom/core"
    require "rom/sql"

    rom_config = ROM::Configuration.new(
      :sql,
      container[:settings].database_url,
      { migrator: { path: "db/migrations" } }
    ) do |config|
      config.relation(:books) do
        schema do
          attribute :id, Bookshelf::Types::Integer
          attribute :title, Bookshelf::Types::String
          attribute :author, Bookshelf::Types::String
          attribute :created_at, Bookshelf::Types::Time.optional
          attribute :updated_at, Bookshelf::Types::Time.optional

          primary_key :id
        end
      end
    end

    rom_config.plugin(:sql, relations: :instrumentation) do |plugin_config|
      plugin_config.notifications = notifications
    end

    rom_config.plugin(:sql, relations: :auto_restrictions)
    rom_config.plugin(:sql, command: :timestamps)

    register "config", rom_config
    register "db", rom_config.gateways[:default].connection
  end

  start do
    config = container["persistence.config"]
    config.auto_registration container.root.join("lib/bookshelf/persistence")

    register "rom", ROM.container(config)
  end
end
