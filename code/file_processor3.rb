class FileProcessor
  
  def process_file(file_name, reporting_method)
    status = if File.extname(file_name) == ".csv"
              parse_csv_file(file_name)
             elsif File.extname(file_name) == ".tsv"
              parse_tsv_file(file_name)
             else
               raise "File extension not supported"
             end

    if reporting_method == 'email'
      report_status_via_email(status)
    elsif reporting_method == 'sms'
      report_status_via_sms(status)
    end
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

  def report_status_via_email(status)
    puts "Emailing status: #{status}"
  end

  def report_status_via_sms(status)
    puts "Reporting via SMS status: #{status}"
  end
end

processor = FileProcessor.new
processor.process_file('my_file.tsv', 'email')
processor.process_file('my_file.csv', 'sms')
