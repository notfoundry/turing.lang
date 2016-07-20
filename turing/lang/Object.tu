unit
class *Object
    export hashCode, equals, toString
    
    deferred fcn hashCode(): nat
    body fcn hashCode(): nat
        var h: nat := #self/*ie*/
        h xor= (h shr 20) xor (h shr 12)
        result h xor (h shr 7) xor (h shr 4)
    end hashCode
    
    deferred fcn toString(): string
    body fcn toString(): string
        result intstr(hashCode())
    end toString
    
    deferred fcn equals(o : ^Object): boolean
    body fcn equals(o : ^Object): boolean
        result self = o
    end equals
end Object

