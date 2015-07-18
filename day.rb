module ActivitiesOfTheWeek 
  class Day  
    # @today = Time.now
    def do_on_day
      today = Time.now
      if today.saturday?
        puts "Go to school, afterwards go do audio visual"
      elsif today.sunday?
        puts "Go to Church, afterwards take a nap"
        puts "Have a blessed week!"
      else
        puts "Go to work"
      end
    end
  end 
  day = Day.new
  day.do_on_day  
end
