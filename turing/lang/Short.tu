unit
class Short
    inherit Number in "%oot/turing/lang/Number.tu"
    export alloc, MIN_VALUE, MAX_VALUE
    const MIN_VALUE: int2 := -32767
    const MAX_VALUE: int2 := 32767
    
    var value : int2
    
    proc alloc(short : int2)
        value := short
    end alloc
    
    body fcn intValue() : int
        result value
    end intValue
    
    body fcn floatValue() : real4
        result cheat(real4, intreal(value))
    end floatValue
    
    body fcn doubleValue() : real8
        result intreal(value)
    end doubleValue
    
    body fcn byteValue() : int1
        result value
    end byteValue
    
    body fcn shortValue() : int2
        result value
    end shortValue
    
    body fcn toString(): string
        result intstr(value)
    end toString
    
    body fcn hashCode(): nat
        result value
    end hashCode
    
    body fcn equals(o: ^Object): boolean
        if o = self then result true
        end if
        if objectclass(o) ~= objectclass(self) then result false
        end if
        
        result Short(o).shortValue() = value
    end equals
end Short