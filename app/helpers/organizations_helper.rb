module OrganizationsHelper
  def tab_link(title, url, options = {})
    classes = []
    if current_page?(url)
      classes << "selected"
    end
    link_to(title, url, options.merge({:class => classes}))
  end

  def following?(org)
    if current_user.present?
      current_user.following_org?(org)
    else
      false
    end
  end
end
