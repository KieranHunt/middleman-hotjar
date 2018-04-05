require "middleman-core"

Middleman::Extensions.register :hotjar do
  require "middleman-hotjar/extension"
  HotjarExtension
end
