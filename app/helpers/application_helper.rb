module ApplicationHelper

  def title_helper
    content_tag(:title, "The BRIDGE Project DC")
  end

  def markdown(text)
    return "" if text.blank?
    markdown_renderer.render(text).html_safe
  end

  def markdown_renderer
    @markdown_renderer ||= Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      :autolink => true, :space_after_headers => true)
  end
end
