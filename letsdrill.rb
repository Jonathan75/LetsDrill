def get_letter_grade_1(grade)
#simplest answer
 case grade
   when 89
    return "B"
  when 73
    return "C"
  end

  "invalid grade"
end

def get_letter_grade_2(grade)
#better answer
  case grade
    when 90..100
      return "A"
    when 80..89
      return "B"
    when 70..79
      return "C"
    when 60..69
      return "D"
    when 0..59
      return "F"
  end

  "invalid grade"
end

def shortest_string(words)
  words.sort! {|x,y| y.length <=> x.length }
  words.last
end

### Don't touch anything below this line ###
# touch
p "Fetch Letter Grade: You should have 2 trues"
p get_letter_grade_1(89) == "B"
p get_letter_grade_1(73) == "C"
p
p get_letter_grade_2(95) == "A"
p get_letter_grade_2(85) == "B"
p get_letter_grade_2(75) == "C"
p get_letter_grade_2(65) == "D"
p get_letter_grade_2(55) == "F"
p
p "Shortest String: You should have 3 trues"
p shortest_string(["touch", "this", "car"]) == "car"
p shortest_string([]) == nil
p shortest_string(["can", "a", "solve", "Find", "solution"]) == "a"
