class String
    def lstrip
        s = self
        s = s[1..] while s[0] == ' '
        s
    end

    def rstrip
        s = self
        s = s[..-1] while s[-1] == ' '
        s
    end

    def strip
        self.lstrip.rstrip
    end
end

def interpret code
    lines = code.split "\n"
    lines = lines.map &:strip
    mem = {}
    labels = {}

    i = 0
    while i < lines.length
        print "#{i}, #{line}"

        if line.end_with? ':'
            labels[line[..-1]] = i
            lines.remove_at i
        elsif line.start_with? '#'
            lines.remove_at i
        end

        ++i
    end

    puts "what #{labels}"

    i = 0
    while i < lines.length
        line = lines[i]
        next if !line
        tok = line.split
        if tok.length < 1
            abort "Syntax error at line #{i + 1}"
        end

        ++i
    end
end

# Read source flie
abort "File name not given" if ARGV.empty?
filename = ARGV[0]
abort "File \"#{filename}\" does not exist" if !File.exist? filename

code = File.read filename
interpret code
