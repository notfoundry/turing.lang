unit
module Doubles
    import Double in "%oot/turing/lang/Double.tu"
    export fromDouble
    
    fcn fromDouble(double: real8): ^Double
        var resultDouble: ^Double
        new Double, resultDouble
        resultDouble -> alloc(double)
        result resultDouble
    end fromDouble
    
end Doubles