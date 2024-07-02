require 'rails_helper'

RSpec.describe TotalPriceCalculator, type: :model do

    describe '#call' do

        it 'calculate the price of 1 ticket' do
            # arrange
            number_of_tickets = 1
            unitary_ticket_price = 2
            expected_total_cost = 2

            # act
            calculator = TotalPriceCalculator.new(number_of_tickets, unitary_ticket_price)
            calculated_total_price = calculator.call

            # assert
            expect(calculated_total_price).to eq(expected_total_cost)
        end

        it 'calculate the price of 4 ticket' do
            # arrange
            number_of_tickets = 4
            unitary_ticket_price = 2
            expected_total_cost = 8

            # act
            calculator = TotalPriceCalculator.new(number_of_tickets, unitary_ticket_price)
            calculated_total_price = calculator.call

            # assert
            expect(calculated_total_price).to eq(expected_total_cost)
        end

        it 'calculate the price of 5 ticket' do
            # arrange
            number_of_tickets = 5
            unitary_ticket_price = 2
            expected_total_cost = 8

            # act
            calculator = TotalPriceCalculator.new(number_of_tickets, unitary_ticket_price)
            calculated_total_price = calculator.call

            # assert
            expect(calculated_total_price).to eq(expected_total_cost)
        end

        it 'calculate the price of 5 ticket' do
            # arrange
            number_of_tickets = 7
            unitary_ticket_price = 2
            expected_total_cost = 12

            # act
            calculator = TotalPriceCalculator.new(number_of_tickets, unitary_ticket_price)
            calculated_total_price = calculator.call

            # assert
            expect(calculated_total_price).to eq(expected_total_cost)
        end

    end

end
