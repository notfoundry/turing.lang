unit
class Float
    inherit Number in "%oot/turing/lang/Number.tu"
    export alloc, MIN_EXPONENT, MIN_NORMAL, MIN_VALUE, MAX_EXPONENT, MAX_VALUE
    
    const MAX_EXPONENT: int := 127
    const MAX_VALUE: real4 := 3.4028234663852886e38
    
    const MIN_EXPONENT: int := -126
    const MIN_NORMAL: real4 := 1.1754943508222875e-38
    const MIN_VALUE: real4 := 1.401298464324817e-45
    
    var value: real4
    
    proc alloc(float : real4)
        value := float
    end alloc
    
    body fcn intValue() : int
        result floor(value)
    end intValue
    
    body fcn floatValue() : real4
        result value
    end floatValue
    
    body fcn doubleValue() : real8
        result value
    end doubleValue
    
    body fcn byteValue() : int1
        result floor(value)
    end byteValue
    
    body fcn shortValue() : int2
        result floor(value)
    end shortValue
    
    body fcn toString(): string
        result erealstr(value, 0, 16, 2)
    end toString
    
    body fcn hashCode(): nat
        result floor(value)
    end hashCode
    
    body fcn equals(o: ^Object): boolean
        if o = self then result true
        end if
        if objectclass(o) ~= objectclass(self) then result false
        end if
        
        result Float(o).floatValue() = value
    end equals
end Float