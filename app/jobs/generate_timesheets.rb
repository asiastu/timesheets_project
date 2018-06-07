class GenerateTimesheets < ApplicationJob
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

    #create timesheets for each week
    unique_weeks_array.map do |week|
      @timesheet = Timesheet.create(week_start: week.beginning_of_week, week_end: week.end_of_week, placement_id: @placement.id, status: "Pending Submission")

      #create only valid timesheet segments for each timesheet
      (@timesheet.week_start..@timesheet.week_end).each do |date|
        if p_date_range.include? date
          timesheetsegment = TimesheetSegment.new(date: date, timesheet_id: @timesheet.id, hours_worked: 0)
          if @placement.apprentice.college_day == timesheetsegment.date.strftime("%A")
            timesheetsegment.type_of_work = "College"
            timesheetsegment.hours_worked = 7.0
          else
            if timesheetsegment.date.cwday == 6 || timesheetsegment.date.cwday == 7
              timesheetsegment.type_of_work = "Not working"
              timesheetsegment.hours_worked = 0.0
            else
              timesheetsegment.type_of_work = "On Site"
              timesheetsegment.hours_worked = 0.0
            end
          end
          timesheetsegment.save
        end
      end
    end
  end
end
