class Theme::Component::Table::Cell < Cell::Concept
  property :options
  property :collection_head
  property :collection_body

  def cell_class
    return "c-table" if options.nil?
    "c-table #{mount_options}"
  end

  private

    def options
      model[:options]
    end

    def collection_head
      model[:collection_head]
    end

    def collection_body
      model[:collection_body]
    end

    def options
      model[:options]
    end

    def mount_options
      options_class = ""
      options.each do |option|
        options_class += " s-table-#{option}"
      end
      options_class.lstrip
    end
end
