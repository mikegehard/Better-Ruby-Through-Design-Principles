class FileProcessor
  
  def process_file(file_name)
    status = if File.extname(file_name) == ".csv"
              parse_csv_file(file_name)
             elsif File.extname(file_name) == ".tsv"
              parse_tsv_file(file_name)
             else
               raise "File extension not supported"
             end

    report_status(status)
  end

  private 
  def parse_csv_file(file_name)
    # do that parsing stuff you do
    puts "Parsing CSV file: #{file_name}"
    "success"
  end

  def parse_tsv_file(file_name)
    # do that parsing stuff you do
    puts "Parsing TSV file: #{file_name}"
    "success"
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
