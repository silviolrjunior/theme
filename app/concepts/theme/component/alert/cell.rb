class Theme::Component::Alert::Cell < Cell::Concept
  property :text
  property :type

  def cell_class
    cell_class = "c-alert c-#{type}"
    return cell_class if model[:klass].nil?
    "#{cell_class} #{model[:klass]}"
  end

  def mount_links(text)
    text.gsub(/< (.*), (.*) >/, "\\1")
    text.gsub(/<(.*), (.*)>/, "<a class='c-alert-link' href='\\2'>\\1</a>")
  end

  private

    def text
      mount_links(model[:text])
    end

    def type
      model[:type]
    end
end
