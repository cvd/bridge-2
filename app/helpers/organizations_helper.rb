module OrganizationsHelper
  def tab_link(title, url, options = {})
    classes = []
    if current_page?(url)
      classes << "selected"
    end
    link_to(title, url, options.merge({:class => classes}))
  end
end
