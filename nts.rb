@hash1 = {
1 => "one",
2 => "two",
3 => "three",
4 => "four ",
5 => "five ",
6 => "six",
7 => "seven",
8 => "eight",
9 => "nine",
}
@hash2 = {
0 => "ten",
1 => "eleven",
2 => "twelve",
3 => "thirteen",
4 => "fourteen",
5 => "fifteen",
6 => "sixteen",
7 => "seventeen",
8 => "eighteen",
9 => "nineteen",
}
@hash3 = {
2 => "twenty",
3 => "thirty",
4 => "fourty",
5 => "fifty",
6 => "sixty",
7 => "seventy",
8 => "eighty",
9 => "ninety",
}

def nts(number)
  @number = number
  if @number >= 100
    return "enter a number less than 100"
  end
  if @number <= 0
    return "enter a number greater than 0"
  end

  num_arr = @number.to_s.chars.map(&:to_i)

  in_english = Proc.new {puts "#{@number} in English is:"} #a proc. DRY


  if num_arr.length == 1
    in_english.call
    puts @hash1[num_arr[0]]
  elsif num_arr.length == 2 && num_arr[0] == 1
    in_english.call
    puts @hash2[num_arr[1]]
  elsif (2..9) === num_arr[0]
    in_english.call
    print @hash3[num_arr[0]]
    print " "
    print @hash1[num_arr[1]]
  end
end
