class Theme::Layout::Rows::Cell < Cell::Concept
  property :klass

  def cell_class
    return 'l-row' if model.nil? or model[:klass].nil?
    "l-row #{model[:klass]}"
  end
end
