class TotalPriceCalculator

    def initialize(number_of_tickets, unitary_ticket_price)
        @number_of_tickets = number_of_tickets
        @unitary_ticket_price = unitary_ticket_price
    end
    
    def call
        total_price = @number_of_tickets * @unitary_ticket_price - discount
        return total_price
    end

    private
    def discount
        discount = 0
        factor_discount = @number_of_tickets / 5

        discount = 2 * factor_discount

        return discount
    end

end
