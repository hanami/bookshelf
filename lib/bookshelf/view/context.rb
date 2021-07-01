# frozen_string_literal: true

require "hanami/view/context"
require "hanami/helpers"

module Bookshelf
  module View
    class Context < Hanami::View::Context
      include Deps["settings"]
      include Hanami::Helpers::FormHelper

      def initialize(**args)
        defaults = {content: {}}

        super(**defaults.merge(args))
      end

      def content_for(key, value = nil, &block)
        content = _options[:content]
        output = nil

        if block
          content[key] = yield
        elsif value
          content[key] = value
        else
          output = content[key]
        end

        output
      end

      def current_path
        request.fullpath
      end

      def csrf_token
        request.session[Hanami::Action::CsrfProtection::CSRF_TOKEN]
      end

      # FIXME: Shouldn't need this (it's needed for the form_for helper)
      def params
        request.params
      end

      # FIXME: Use Router's url_helpers
      def routes
        Hanami.app.instance_variable_get(:@app).app.instance_variable_get(:@app).url_helpers
      end

      # FIXME: Use a real favion
      def favicon
        ""
      end
    end
  end
end
