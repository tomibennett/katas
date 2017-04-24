$numerals = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def correspondance number
  $numerals.keys.find_all { |arabic| number >= arabic }.first
end

def convert number, roman_numeral = ''
  if number > 0
    a_number = correspondance number
    convert(number - a_number, roman_numeral << $numerals[a_number])
  else
    roman_numeral
  end
end
