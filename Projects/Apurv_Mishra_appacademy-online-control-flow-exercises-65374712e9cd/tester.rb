s = "QwerTY"

def destructive_uppercase(str)
    str.each_char do |ch|
       if ch != ch.capitalize then
        str.delete!(ch)
       end
    end
end


destructive_uppercase(s)
puts s