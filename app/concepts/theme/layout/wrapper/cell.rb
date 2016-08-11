class Theme::Layout::Wrapper::Cell < Cell::Concept
  property :fluid
  property :klass

  def is_fluid?
    model.nil? ? false : model[:fluid]
  end

  def wrapper_class
    is_fluid? ? "l-wrapper-fluid" : "l-wrapper"
  end

  def cell_class
    return "#{wrapper_class}" if model[:klass].nil?
    "#{wrapper_class} #{model[:klass]}"
  end
end
