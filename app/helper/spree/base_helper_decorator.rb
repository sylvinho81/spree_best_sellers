Spree::BaseHelper.class_eval do

  def social_links_list(options={})
    options = {
      :list_class          => 'social inline',
      :element_class       => '',
      :dynamic_backgrounds => true
    }.merge(options)

    output  = "<ul class=\"#{options[:list_class]}\">"

    networks = [:facebook, :twitter, :google_plus, :pinterest, :youtube, :flickr, :skype]
    networks_icons = [:facebook, :twitter, 'google-plus-official', :pinterest, :youtube, :skype]
    networks.each_with_index do |network, i|
      link = link_to_social_media(network, {:icon => networks_icons[i].to_s})
      if link
        output << "<li>"+link+'</li>'
      end
    end

    output << '</ul>'
    output.html_safe
  end

  def link_to_social_media(network, options = {})
    symbolized_network = ('socialmedia_'+(network.to_s)).to_sym
    config = Spree::SocialmediaConfiguration.new
    result = nil
    # options
    options[:anchor] ||= true
    options[:text]   ||= network.to_s.titlecase
    options[:title]  ||= network.to_s.titlecase
    options[:target] ||= "_blank"

    if config.has_preference? symbolized_network
      link   = config[symbolized_network]
      result = link unless link.empty?

      if link and !link.empty? and options[:anchor]
        result = "<i class='fa fa-#{options[:icon]}' aria-hidden='true'></i>" + "  "
        result << (link_to  link, target: options[:target] do
                    Spree.t("socialmedia.settings.#{options[:text].downcase}.title")
                 end)
      end
    end

    return result
  end

end
