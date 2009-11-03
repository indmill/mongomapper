module MongoMapper
  module I18n
    
    def human_attribute_name(field_name, options = {})
      default = []
      default << options.delete(:default)
      default << field_name.to_s.humanize
      default.flatten!
      options.merge!(:default => default, :scope => [:document, :attributes])
      ::I18n.translate(:"#{self.class.name.underscore}.#{field_name.to_s}", options)
    end

  end
end