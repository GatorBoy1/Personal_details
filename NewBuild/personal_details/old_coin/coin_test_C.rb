require "minitest/autorun"

require_relative "func_C.rb"

class TestCoinChanger< Minitest::Test 

    

    def test_0_returns_empty_hash

        cents_received = 0

        assert_equal({dollar_pc:0, fifty_cnt_pc:0, quarter:0, dime:0, nickel:0, penny:0}, coin_changer(cents_received))

    end

 

    def test_returns_8_dollars_and_fifty_cents

        cents_received = 850

        assert_equal({dollar_pc:8, fifty_cnt_pc:1, quarter:0, dime:0, nickel:0, penny:0},coin_changer(cents_received))

    end



    def test_returns_6_dollars_and_seventy_five_cents

        cents_received = 675

        assert_equal({dollar_pc:6, fifty_cnt_pc:1, quarter:1, dime:0, nickel:0, penny:0},coin_changer(cents_received))



    end



def test_returns_4_dollars_and_ninety_cents

        cents_received = 490

        assert_equal({dollar_pc:4, fifty_cnt_pc:1, quarter:1, dime:1, nickel:1, penny:0},coin_changer(cents_received))



    end



def test_returns_4_dollars_and_ninety_three_cents

        cents_received = 493

        assert_equal({dollar_pc:4, fifty_cnt_pc:1, quarter:1, dime:1, nickel:1, penny:3},coin_changer(cents_received))



    end





def test_returns_4_dollars_and_three_cents

        cents_received = 403

        assert_equal({dollar_pc:4, fifty_cnt_pc:0, quarter:0, dime:0, nickel:0, penny:3},coin_changer(cents_received))



    end

 











end