require 'logger'

files = ['weblog.log']

loggers = files.map {|file| Logger.new(file, 1, 10* 1024 * 1024)}

start_time = Time.now
counter = 1

5.times do
  loggers.each do |logger|
    logger.info "Line #{counter}. Beforebackslash-r\rAfter backslash-r"
  counter += 1
  end
end

sleep rand/10.0
