class FileProcessor
  
  def process_file(file_name)
    status = parse_file(file_name)

    report_status(status)
  end

  private 
  def parse_file(file_name)
    # do that parsing stuff you do
    puts "Parsing file: #{file_name}"
    "success"
  end

  def report_status(status)
    # probably email for now
    puts "Reporting status: #{status}"
  end

end

processor = FileProcessor.new
processor.process_file('my_file.csv')
