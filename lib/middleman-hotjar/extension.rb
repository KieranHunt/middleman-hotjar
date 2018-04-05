require 'middleman-core'

class HotjarExtension < ::Middleman::Extension
  option :hjid, nil, 'Hotjar ID'
  option :hotjar_id, nil, 'Hotjar ID'
  option :id, nil, 'Hotjar ID'

  def after_configuration
    options[:id] = options.id || options.hjid || options.hotjar_id
    if options.id.nil?
      $stderr.puts 'Hotjar: please specify a Hotjar ID'
      raise ArgumentError, 'No Hotjar ID given' if app.build?
    end
  end

  helpers do
    def hotjar_tag
      options = extensions[:hotjar].options
      <<~HOTJAR_TAG
        <!-- Hotjar Tracking Code -->
        <script>
          (function(h,o,t,j,a,r){
              h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
              h._hjSettings={hjid:#{options.id},hjsv:6};
              a=o.getElementsByTagName('head')[0];
              r=o.createElement('script');r.async=1;
              r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
              a.appendChild(r);
          })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
        </script>
      HOTJAR_TAG
    end
  end
end
