class GenerateTimesheets <ApplicationJob
  queue_as :default

  def perform(placement_id)
    @placement = Placement.find(placement_id)
    p_s = @placement.pl_start_date
    p_e = @placement.pl_end_date
    p_date_range = (Date.ordinal(p_s.year, p_s.yday)..Date.ordinal(p_e.year, p_e.yday))
    unique_weeks_array = [] #array of ord_dates

#adds a date to unique_weeks_array if week is unique
    p_date_range.each do |dte|
      unique_weeks_array << dte unless unique_weeks_array.any? { |week| week.cweek == dte.cweek }
    end

    unique_weeks_array.each do |week|
      @timesheet = Timesheet.new
      @timesheet.week_start = week.beginning_of_week
      @timesheet.week_end = week.end_of_week
      @timesheet.save

      ([@timesheet.week_start]..[@timesheet.week_end]).each do |date|
        if p_date_range.any? { |day| day == date }
          @timesheetsegment = Timesheetsegment.new
          @timesheetsegment.date = date
          @timesheetsegment.save
        end
      end
    end
  end
end
