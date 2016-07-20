unit
module Strings
    import String in "%oot/turing/lang/String.tu"
    export fromString
    
    fcn fromString(str: string): ^String
        var resultStr: ^String
        new resultStr; resultStr -> alloc(str);
        result resultStr
    end fromString
end Strings