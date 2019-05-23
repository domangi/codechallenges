require_relative 'tidy_number'

filename = ARGV[0]
File.open(filename, 'r') do |f|
        f.readline
        f.each_line.with_index do |line, index|
                puts "Case ##{index+1}: #{TidyNumber.solve(line)}"
        end
end
