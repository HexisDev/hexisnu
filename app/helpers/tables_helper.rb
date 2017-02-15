module TablesHelper
    def height(table)
        return (100*(table.booked.to_f/table.seats)).round(0)
    end

    def tickets_booked()
        booked = 0
        Table.all.each do |t|
            booked += t.booked
        end 
        return booked
    end
end
