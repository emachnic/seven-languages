File.open('passage.txt', 'r') { |stream|
  @word = "ruby"
  while line = stream.gets
    if line =~ /#{@word}/io
      puts "Line: #{line}"
    end
  end
}
