module ApplicationHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new()
    markdown = Redcarpet::Markdown.new(renderer)

    markdown.render(text).html_safe
  end
  
  # Macro printing method for all sidebars sitewide.
  # in each controller... override the method "sidebar" to return an array of strings
  def print_subnav
    sidebar_list = subnav
    if sidebar_list.any?
      haml_tag :div, :class => "subnav" do
        haml_tag :ul do
          sidebar_list.each do |item|
            if item.is_a? Hash
              item = render(item)
            end
            haml_concat item
          end
        end
      end
    end
  end
  
  def subnav
    []
  end
end
