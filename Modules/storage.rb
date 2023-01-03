class Storage
  @@FILE_EXTENSION = 'json'
  @@BASE_URL = './db/'

  def self.save_date(class_name, object)
    File.open("#{@@BASE_URL}#{class_name}.#{@@FILE_EXTENSION}", "w") do |f| 
      f.write JSON.generate(object)
    end
  end

  def self.load_data(class_name)
    file_path = "#{@@BASE_URL}#{class_name}.#{@@FILE_EXTENSION}"

    return [] unless File.exists?(file_path)
    data_from_file = File.read(file_path)
    JSON.parse(data_from_file, create_additions: true)
  end
end
