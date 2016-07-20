unit
class String
    inherit Object in "%oot/turing/lang/Object.tu"
    import Memory in "%oot/turing/util/Memory.tu"
    export alloc, size, concat
    
    const MAX_STRING_BYTES: nat := 256
    
    var chars: flexible array 1..0 of char
    
    proc alloc(str: string)
        new chars, length(str)+1
        Memory.Copy(addr(chars), addr(str), length(str)+1)
    end alloc
    
    fcn size(): nat
        result upper(chars)-1
    end size
    
    fcn concat(str: ^String): ^String
        if (size() + str -> size() > MAX_STRING_BYTES) then
            Error.Halt("ArrayOutOfBoundsException: combined length of strings exceeds maximum single string length")
        end if
        var resultStr: ^String
        new resultStr; resultStr -> alloc(toString() + str -> toString());
        result resultStr
    end concat
    
    body fcn toString(): string
        result string @ (addr(chars))
    end toString
end String