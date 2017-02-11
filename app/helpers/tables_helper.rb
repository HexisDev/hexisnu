module TablesHelper
    def height(table)
        return (100*(table.booked.to_f/table.seats)).round(0)
    end
end
