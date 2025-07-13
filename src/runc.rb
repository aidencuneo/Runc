require './src/tokeniser.rb'
require './src/interpreter.rb'

# Read source flie
abort 'File name not given' if ARGV.empty?
filename = ARGV[0]
abort "File \"#{filename}\" does not exist" if !File.exist? filename

code = File.read filename
interpret code
