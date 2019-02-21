def add_two_numbers(no_1, no_2)
    puts no_1 + no_2
    no_1 = no_2 - no_1
    return no_1 - no_2
end

add_two_numbers(1,2)