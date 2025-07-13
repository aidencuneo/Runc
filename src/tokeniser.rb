class String
    def get_token_type
        if self in ' \t\n\r\f\v'.chars
            :space
        elsif self == '0'..'9'
            :digit
        else
            :word
        end
    end
end

def tokenise code
    tokens = []
    i = 0

    while i < code.length
        tok_type = code[i].get_token_type

        case tok_type
        when :space
            i += 1
        when :word
            word = ''
        end
    end
end
