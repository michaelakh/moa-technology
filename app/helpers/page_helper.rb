module PageHelper
  def icon(name, options = {})
    options[:aria] ||= name
    fa_icon name, class: options[:class], "aria-label": options[:aria]
  end

  def meta_tag(meta_tag)
    meta = ''
    if !meta_tag.nil? && meta_tag.is_a?(Hash)
      meta_tag.each do |x, y|
        meta += "<meta name='#{x}' content='#{y}'>\n"
      end
    end

    meta.html_safe
  end

  def captalize_all(string)
    string.split.map(&:capitalize).join(' ')
  end

  def web_address(string)
    request.base_url + "/#{string}"
  end
end
