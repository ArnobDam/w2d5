class Flight
    
    attr_reader :passengers
    def initialize(flight_num_str, capacity)
        @flight_number = flight_num_str
        @capacity = capacity
        @passengers = []
    end

    def full?
        if passengers.length == @capacity
            true
        else
            false
        end
    end

    def board_passenger(passenger)
        if !self.full?
            if passenger.has_flight?(@flight_number)
                passengers << passenger
            end
        end
    end

    def list_passengers
        names_arr = passengers.map {|passenger| passenger.name}
    end

    def [](number)
        passengers[number]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end

end