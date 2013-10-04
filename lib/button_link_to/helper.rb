module ButtonLinkTo
  module Helper

    def button_link_to(name = nil, options = nil, html_options = nil, &block)
      html_options, options = options, name if block_given?
      options ||= {}
      html_options = convert_options_to_data_attributes(options, html_options)
      url = url_for(options)

      html_options.merge!({"data-url" => url, :type => "button"})

      content_tag(:button, name || url, html_options, &block)
    end

  end
end