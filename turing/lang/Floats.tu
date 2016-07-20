unit
module Floats
    import Float in "%oot/turing/lang/Float.tu"
    export fromFloat
    
    fcn fromFloat(float: real4): ^Float
        var resultFloat: ^Float
        new Float, resultFloat
        resultFloat -> alloc(float)
        result resultFloat
    end fromFloat
    
end Floats