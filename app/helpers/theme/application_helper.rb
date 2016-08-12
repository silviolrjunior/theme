module Theme
  module ApplicationHelper
    def theme_alert(model)
      Theme::Component::Alert::Cell.new(model).()
    end

    def theme_wrapper(model, &block)
      Theme::Layout::Wrapper::Cell.new(model).() do
        yield
      end
    end

    def theme_col(model, &block)
      Theme::Layout::Cols::Cell.new(model).() do
        yield
      end
    end

    def theme_panel(model, &block)
      Theme::Component::Panel::Cell.new(model).() do
        yield
      end
    end

    def theme_button(model, &block)
      if block_given?
        Theme::Component::Button::Cell.new(model).() do
          yield 
        end
      else
        Theme::Component::Button::Cell.new(model).()
      end
    end

    def theme_table(model, &block)
      Theme::Component::Table::Cell.new(model).() do
        yield
      end
    end
  end
end
