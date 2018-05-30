class GenerateTimesheets <ApplicationJob
  queue_as :default

  def perform(placement_id)
    placement = Placement.find(placement_id)
    #generate timesheet for each placement
    #generate timesheet_segment for each timesheet
# placement.start_date = Date.parse('date start')
# placement.end_date = Date.parse('date end')
# (start..endd).to_a

  end
end
