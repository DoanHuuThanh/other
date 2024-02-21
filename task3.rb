require 'date'

def print_calendar(year)
  month_names = Date::MONTHNAMES[1..12]

  month_names.each_with_index do |month_name, month_index|
    month = month_index + 1
    puts "#{month_name} #{year}".center(20)
    puts " Su Mo Tu We Th Fr Sa"

    first_day_of_month = Date.new(year, month, 1)
    last_day_of_month = Date.new(year, month, -1)
    starting_day_of_week = first_day_of_month.strftime("%u").to_i

    print "   " * (starting_day_of_week - 1)

    (1..last_day_of_month.day).each do |day|
      print day.to_s.rjust(3)
      starting_day_of_week += 1
      if starting_day_of_week > 7
        starting_day_of_week = 1
        puts ""
      end
    end

    puts "\n\n"
  end
end

print_calendar(2020)
