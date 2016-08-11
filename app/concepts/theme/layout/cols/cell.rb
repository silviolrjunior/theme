class Theme::Layout::Cols::Cell < Cell::Concept
  property :xs
  property :sm
  property :md
  property :lg
  property :klass

  def cell_class
    @cell_class = ''
    mount_class_devices
    return @cell_class.lstrip if model[:klass].nil?
    "#{@cell_class.lstrip} #{model[:klass]}"
  end

  def mount_class_devices
    [:xs, :sm, :md, :lg].each do |device|
      @cell_class += "#{mount_class_device(device)}" unless model[device].nil?
      @cell_class += "#{mount_glide_class_device(device)}" unless model[device].nil?
    end    
  end

  def mount_class_device(device)
    return " l-#{model[device][:col]}-col-#{device}" unless model[device][:col].nil?
  end

  def mount_glide_class_device(device)
    return " l-glide-#{model[device][:glide]}-col-#{device}" unless model[device][:glide].nil?
  end
end
