# frozen_string_literal: true

Hanami.application.routes do
  slice :main, at: "/" do
    root to: "home.index"
  end
end
