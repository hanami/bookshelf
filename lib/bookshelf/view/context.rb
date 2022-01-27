# frozen_string_literal: true

require "hanami/view/context"
require "hanami/helpers"
require "hanami/action/csrf_protection"

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
        request.session[Hanami::Action::CSRFProtection::CSRF_TOKEN]
      end

      # FIXME: Shouldn't need this (it's needed for the form_for helper)
      def params
        request.params
      end

      # FIXME: Use a real favion
      def favicon
        ""
      end
    end
  end
end
