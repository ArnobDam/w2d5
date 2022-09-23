class Passenger
    require "byebug"

    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(flight_num_str)
        #debugger
        if @flight_numbers.include?(flight_num_str.upcase)
            true
        else
            false
        end
    end

    def add_flight(flight_num_str)
        if !self.has_flight?(flight_num_str)
            @flight_numbers << flight_num_str.upcase
        end
    end
end