class Theme::Component::Panel::Cell < Cell::Concept
  property :title

  def cell_class
    return "c-panel" if model[:klass].nil?
    "c-panel #{model[:klass]}"
  end

  private

    def title
      model[:title]
    end
end
