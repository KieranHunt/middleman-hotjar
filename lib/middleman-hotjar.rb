# frozen_string_literal: true

require 'middleman-core'

Middleman::Extensions.register :hotjar do
  require 'middleman-hotjar/extension'
  HotjarExtension
end
