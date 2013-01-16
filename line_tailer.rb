require 'file-tail'

filename = 'weblog.log'

@log = File.open filename
@log.extend(File::Tail)
@log.backward 0
@log.max_interval = 1
@log.interval = 1
@counter = 1

@log.tail do |line|
  puts "#{@counter}:\n#{line}"
  @counter += 1
end