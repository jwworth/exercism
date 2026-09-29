class LogLineParser
  SEPARATOR = ':'

  attr_reader :message, :log_level

  def initialize(line)
    log_level, message = line.split(SEPARATOR)

    @message = message.strip
    @log_level = log_level.downcase.delete('[]')
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
