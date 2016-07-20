unit
module Shorts
    import Short in "%oot/turing/lang/Short.tu"
    export fromShort
    
    fcn fromShort(short: int2): ^Short
        var resultShort: ^Short
        new Short, resultShort
        resultShort -> alloc(short)
        result resultShort
    end fromShort
    
end Shorts