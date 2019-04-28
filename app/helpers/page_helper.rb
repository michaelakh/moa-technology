module PageHelper
  
  def icon(name, options = {})
    options[:height] ||= 24
    options[:aria] ||= name
    octicon name, :height => options[:height],  :class => options[:class], :"aria-label" => options[:aria]
  end
  
  def meta_tag(meta_tag)
    meta = ''
    if meta_tag != nil && meta_tag.kind_of?(Hash)
      meta_tag.each do |x,y|
        meta += "<meta name='#{x}' content='#{y}'>\n"
      end
    else 
    end

    return meta.html_safe
  end

  def captalize_all(string)
    string.split.map(&:capitalize).join(' ')
  end
  
end