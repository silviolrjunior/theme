class Theme::Component::Button::Cell < Cell::Concept
  property :text
  property :type
  property :tag
  property :klass
  property :size
  property :options

  def cell_class
    cell_class = "c-btn"
    cell_class += " s-btn-#{type}" unless type.nil?
    cell_class += " s-btn-#{size}" unless size.nil?
    return cell_class if klass.nil?
    "#{cell_class} #{klass}"
  end

  def mount_open_tag
    open_tag = "<#{tag} class='#{cell_class}'"
    open_tag += " #{mount_options}" unless options.nil?
    open_tag += ">"
    open_tag
  end

  def mount_close_tag
    "</#{tag}>"
  end

  def mount_options
    html = ""
    options.each do |k,v|
      html += "#{k}='#{v}'"
    end
    html
  end

  private

    def klass
      model[:klass]
    end

    def size
      model[:size]
    end

    def text
      model[:text]
    end

    def type
      model[:type]
    end

    def tag
      model[:tag] || "button"
    end

    def options
      model[:options]
    end
end
