unit
module Conditions
    export hasString, hasInt, hasNat, hasReal, hasBoolean
    
    fcn hasString(var stringField: string): boolean
        result nat1 @ (addr(stringField)) ~= 128 & nat1 @ (addr(stringField)+1) = 0
    end hasString
    
    fcn hasInt(var intField: int): boolean
        result int4 @ (addr(intField)) >= minint
    end hasInt
    
    fcn hasNat(var natField: nat): boolean
        result maxnat >= nat4 @ (addr(natField))
    end hasNat
    
    fcn hasReal(var realField: real): boolean
        result nat1 @ (addr(realField)+3) ~= 128 & nat1 @ (addr(realField)+7) ~= 128
    end hasReal
    
    fcn hasBoolean(var booleanField: boolean): boolean
        result int1 @ (addr(booleanField)) >= 0
    end hasBoolean
end Conditions