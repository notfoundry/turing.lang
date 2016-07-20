unit
class Double
    inherit Number in "%oot/turing/lang/Number.tu"
    export alloc, MIN_EXPONENT, MIN_NORMAL, MIN_VALUE, MAX_EXPONENT, MAX_VALUE
    
    const MAX_EXPONENT: int := 1023
    const MAX_VALUE: real8 := 1.7976931348623157e308
    
    const MIN_EXPONENT: int := -1022
    const MIN_NORMAL: real8 := 2.2250738585072014e-308
    const MIN_VALUE: real8 := 4.9e-311
    
    var value: real8
    
    proc alloc(double : real8)
        value := double
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
        
        result Double(o).doubleValue() = value
    end equals
end Double