unit
module Integers
    import Integer in "%oot/turing/lang/Integer.tu"
    export fromInt
    
    fcn fromInt(integer: int): ^Integer
        var resultInt: ^Integer
        new Integer, resultInt
        resultInt -> alloc(integer)
        result resultInt
    end fromInt
    
end Integers