Apprentice.destroy_all
Placement.destroy_all
User.destroy_all

user16 = User.create!(email: 'email16@email.com', password: '123456', role: "Employment Agency", first_name: "Pippa", last_name: "Derby", company_name: "Construction Cie.", phone_number: "0123456789", address: "London")

# user17 = User.create!(email: 'email17@email.com', password: '123456', role: "Employment Agency", first_name: "Paula", last_name: "Delta", company_name: "Hammer & Nailz", phone_number: "0123456789", address: "London")

# user18 = User.create!(email: 'email18@email.com', password: '123456', role: "Employment Agency", first_name: "Johna", last_name: "Alpha", company_name: "Hammond and co", phone_number: "0123456789", address: "Bristol")

# user19 = User.create!(email: 'email19@email.com', password: '123456', role: "Employment Agency", first_name: "Ringa", last_name: "Omega", company_name: "L Y N K", phone_number: "0123456789", address: "Canterbury")

# user20 = User.create!(email: 'email20@email.com', password: '123456', role: "Employment Agency", first_name: "Beta", last_name: "Caroten", company_name: "Pristeen", phone_number: "0123456789", address: "Somewhere")

user1 = User.create!(address: 'E2 7SB', email: 'email@email.com', password: '123456', role: "Apprentice",first_name: 'Danny', last_name: 'Elfmam')
apprentice1 = Apprentice.new(trade: 'Carpentry' , skills: 'stairs', borough: 'Hackney', personal_statement: 'Good with hammer', app_start_date: '10/10/2017', app_end_date: '10/10/2019', college_day: 'Monday', hourly_rate: 7)
apprentice1.user = user1
apprentice1.agency = user16
apprentice1.save

user2 = User.create!(address: 'N1 6RX', email: 'email2@email.com', password: '123456', role: "Apprentice", first_name: 'Susan', last_name: 'Suse')
apprentice2 = Apprentice.new(trade: 'Electrical' , skills: 'snagging', borough: 'Hackney', personal_statement: 'First year', app_start_date: '02/01/2018', app_end_date: '02/01/2020', college_day: 'Tuesday', hourly_rate: 7)
apprentice2.user = user2
apprentice2.agency = user16
apprentice2.save

user3 = User.create!(address: 'N1 0EH', email: 'email3@email.com', password: '123456', role: "Apprentice", first_name: 'Lily', last_name: 'Potter')
apprentice3 = Apprentice.new(trade: 'Bricklaying' , skills:'blockwork', borough: 'Islington', personal_statement: 'Second year apprentice', app_start_date: '1/11/2017', app_end_date: '1/11/2019', college_day: 'Thursday', hourly_rate: 9.5)
apprentice3.user = user3
apprentice3.agency = user16
apprentice3.save

user4 = User.create!(address: 'SW1E 6SD', email: 'email4@email.com', password: '123456', role: "Apprentice", first_name: 'Eric', last_name: 'Erich')
apprentice4 = Apprentice.new(trade: 'Bricklaying' , skills:'round corners', borough: 'City of Westminster', personal_statement: 'I love brickwork!', app_start_date: '03/02/2018', app_end_date: '03/02/2020', college_day: 'Thursday', hourly_rate: 8)
apprentice4.user = user4
apprentice4.agency = user16
apprentice4.save

user5 = User.create!(address: 'CR0 1RE', email: 'email5@email.com', password: '123456', role: "Apprentice", first_name: 'Sam', last_name: 'Err')
apprentice5 = Apprentice.new(trade: 'Painting & Decorating' , skills:'columns', borough: 'Croydon', personal_statement: 'Looking for a commercial site', app_start_date: '12/12/2016', app_end_date: '12/12/2018', college_day: 'Wednesday', hourly_rate: 9)
apprentice5.user = user5
apprentice5.agency = user16
apprentice5.save

user6 = User.create!(email: 'email6@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "Wates", first_name: "Guy", last_name: "Roland", phone_number: "0132456789", address: "London")


user7 = User.create!(email: 'email7@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "Mace", first_name: "Sixteen", last_name: "die Antwword", phone_number: "0132456789", address: "Bristol")


user8 = User.create!(email: 'email8@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "Bouygues", first_name: "Roger", last_name: "Hodgson", phone_number: "0132456789", address: "Manchester")


user9 = User.create!(email: 'email9@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "Morgan Sindall", first_name: "Tim", last_name: "Minchin", phone_number: "0132456789", address: "Doncaster")


user10 = User.create!(email: 'email10@email.com', password: '123456', role: "Host Company (Timesheet Validation)", company_name: "Willmott Dixon", first_name: "Nathan", last_name: "Fillon", phone_number: "0132456789", address: "Surrey")


user11 = User.create!(email: 'email11@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Joan", last_name: "Jett", phone_number: "0132456789", address: "London", company_name: "Wates",)


user12 = User.create!(email: 'email12@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Rudolf", last_name: "Schenker", phone_number: "0132456789", address: "Bristol", company_name: "Mace",)


user13 = User.create!(email: 'email13@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Poucet", last_name: "Le Petit", phone_number: "0132456789", address: "Manchester", company_name: "Bouygues",)


user14 = User.create!(email: 'email14@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "Phil", last_name: "Genesis", phone_number: "0132456789", address: "Doncaster", company_name: "Morgan Sindall",)


user15 = User.create!(email: 'email15@email.com', password: '123456', role: "Host Company (Invoicing)", first_name: "John", last_name: "Doe", phone_number: "0132456789", address: "Surrey", company_name: "Willmott Dixon",)


placement1 = Placement.create!(apprentice: apprentice1, host_validator: user6, host_invoice_contact: user12, pl_start_date: '11/06/2018', pl_end_date: '01/07/2018', address: 'E5 0EX', hourly_rate: 7)
placement1a = Placement.create!(apprentice: apprentice1, host_validator: user7, host_invoice_contact: user13, pl_start_date: '01/05/2018', pl_end_date: '08/06/2018', address: 'N1 5AP', hourly_rate: 7.5)
placement1b = Placement.create!(apprentice: apprentice1, host_validator: user8, host_invoice_contact: user11, pl_start_date: '15/09/2018', pl_end_date: '10/10/2018', address: 'E20 1DG', hourly_rate: 7)
placement1c = Placement.create!(apprentice: apprentice1, host_validator: user8, host_invoice_contact: user11, pl_start_date: '15/03/2018', pl_end_date: '31/03/2018', address: 'N1C 4AG', hourly_rate: 7)
placement1d = Placement.create!(apprentice: apprentice1, host_validator: user8, host_invoice_contact: user11, pl_start_date: '15/04/2018', pl_end_date: '30/04/2018', address: 'WC2N 5DU', hourly_rate: 7)

placement2 = Placement.create!(apprentice: apprentice2, host_validator: user7, host_invoice_contact: user12, pl_start_date: '10/05/2018', pl_end_date: '06/09/2018', address: 'NW1 5BQ', hourly_rate: 8)

placement3 = Placement.create!(apprentice: apprentice3, host_validator: user8, host_invoice_contact: user13, pl_start_date: '04/06/2018', pl_end_date: '08/06/2018', address: 'EC2R 7DA', hourly_rate: 9)

placement4 = Placement.create!(apprentice: apprentice4, host_validator: user9, host_invoice_contact: user14, pl_start_date: '03/02/2018', pl_end_date: '09/05/2018', address: 'SE1 7BB', hourly_rate: 7)

placement5 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: '02/04/2018', pl_end_date: '11/05/2018', address: 'CR0 4XS', hourly_rate: 10)

placement6 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: '14/05/2018', pl_end_date: '10/06/2018', address: 'N6 5HG', hourly_rate: 6)
placement6 = Placement.create!(apprentice: apprentice5, host_validator: user10, host_invoice_contact: user15, pl_start_date: '13/06/2018', pl_end_date: '31/08/2018', address: 'UB5 6JS', hourly_rate: 7)

Placement.all.each do |placement|
  p_s = placement.pl_start_date
  p_e = placement.pl_end_date
  p_date_range = (Date.ordinal(p_s.year, p_s.yday)..Date.ordinal(p_e.year, p_e.yday))
  unique_weeks_array = [] #array of ord_dates

  #adds a date to unique_weeks_array if week is unique
  p_date_range.each do |dte|
    unique_weeks_array << dte unless unique_weeks_array.any? { |week| week.cweek == dte.cweek }
  end

  #create timesheets for each week
    unique_weeks_array.map do |week|
      timesheet = Timesheet.create(week_start: week.beginning_of_week, week_end: week.end_of_week, placement_id: placement.id, status: "Pending Submission")

    #create only valid timesheet segments for each timesheet
    (timesheet.week_start..timesheet.week_end).each do |date|
      if p_date_range.include? date
        timesheetsegment = TimesheetSegment.new(date: date, timesheet_id: timesheet.id)
        if placement.apprentice.college_day == timesheetsegment.date.strftime("%A")
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
