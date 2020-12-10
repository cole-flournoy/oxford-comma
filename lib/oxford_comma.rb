def oxford_comma(array)
    if array.length == 1
        array = array.join
        array
    elsif array.length == 2
        new_str = array.join(" and ")
        new_str
    elsif array.length > 2
        new_str = array.join(", ")
        position = new_str.rindex(", ")
        new_str = new_str.insert(position + 2, "and ")  
        new_str
    end
end

example_array = ["spinach"]
oxford_comma(example_array)

example_array = ["spinach", "potatoes with hats"]
oxford_comma(example_array)

example_array = ["spinach", "potatoes with hats", "earwigs"]
oxford_comma(example_array)

example_array = ["spinach", "potatoes with hats", "earwigs", "bungalows", "osteopaths"]
oxford_comma(example_array)