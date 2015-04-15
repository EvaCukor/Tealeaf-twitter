module ApplicationHelper
  def auto_links(str)
    str = link_hashtag(str)
    str = link_mentions(str)
    str.html_safe
  end
  
  def link_hashtag(str)
    str.gsub(/#(\w+)/, "<a href='/hashtags/\\1'>#\\1</a>")
  end
  
  def link_mentions(str)
    str.gsub(/@(\w+)/, "<a href='/\\1'>@\\1</a>")
  end
  
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
end
