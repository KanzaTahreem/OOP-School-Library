class Storage
  @@FILE_EXTENSION = 'json'
  @@BASE_URL = './db/'

  def self.save_date(class_name, object)
    File.open("#{@@BASE_URL}#{class_name}.#{@@FILE_EXTENSION}", "w") do |f| 
      f.write JSON.generate(object)
    end
  end
end
