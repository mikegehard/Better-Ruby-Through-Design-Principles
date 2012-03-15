class FileProcessor

  def process_file(file_name)
    status = parse_file(file_name)

    report_status(status)
  end

  private
  def parse_file(file_name)
    if File.extname(file_name) == ".csv"
      # do that parsing stuff you do
      puts "Parsing CSV file: #{file_name}"
      "success"
    elsif File.extname(file_name) == ".tsv"
      # do that parsing stuff you do
      puts "Parsing TSV file: #{file_name}"
      "success"
    else
      raise "File extension not supported"
    end
  end

  def report_status(status)
    # probably email for now
    puts "Reporting status: #{status}"
  end

end

processor = FileProcessor.new
processor.process_file('my_file.tsv')
processor.process_file('my_file.csv')
processor.process_file('my_file.pdf')
