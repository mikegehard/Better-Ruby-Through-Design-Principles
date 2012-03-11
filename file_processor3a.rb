class FileProcessor
  
  def process_file(file_name, reporter)
    parser = FileParsers.find(file_name)
    status = parser.parse

    reporter.report(status)
  end

  private 
  def report_status(status)
    # probably email for now
    puts "Reporting status: #{status}"
  end

end

class FileParsers
  class CsvParser
    def initialize(file_name)
      @file_name = file_name
    end

    def parse
      # Do that parsing stuff you doa
      puts "Processing file #{@file_name}"
      "success"

    end
  end

  class TsvParser
    def initialize(file_name)
      @file_name = file_name
    end

    def parse
      # Do that parsing stuff you do
      puts "Processing file #{@file_name}"
      "success"
    end
  end

  def self.find(file_name)
    if File.extname(file_name) == '.csv'
      CsvParser.new(file_name)
    elsif File.extname(file_name) == '.tsv'
      TsvParser.new(file_name)
    else
      raise "File extension not supported" 
    end
  end

end

class EmailReporter
  def report(status)
    puts "Emailing status: #{status}"
  end
end

class SmsReporter
  def report(status)
    puts "Sms reporting status: #{status}"
  end
end



processor = FileProcessor.new
processor.process_file('my_file.csv', EmailReporter.new)
processor.process_file('my_file.tsv', SmsReporter.new)
