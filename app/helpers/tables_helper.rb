module TablesHelper
    def height(table)
        return (100*(table.booked.to_f/table.seats)).round(0)
    end

    def tickets_left()
        seats = 0
        booked = 0
        Table.all.each do |t|
            booked += t.booked
            seats += t.seats
        end 
        return seats - booked
    end
end
