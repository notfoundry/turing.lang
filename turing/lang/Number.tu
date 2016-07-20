unit
class Number
    inherit Object in "%oot/turing/lang/Object.tu"
    export intValue, floatValue, doubleValue, byteValue, shortValue
    deferred fcn intValue(): int
    
    deferred fcn floatValue(): real4
    
    deferred fcn doubleValue(): real8
    
    deferred fcn byteValue(): int1
    body fcn byteValue(): int1
        result cheat(int1, intValue())
    end byteValue
    
    deferred fcn shortValue(): int2
    body fcn shortValue(): int2
        result cheat(int2, intValue())
    end shortValue
end Number