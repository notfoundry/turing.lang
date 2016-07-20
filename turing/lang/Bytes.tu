unit
module Bytes
    import Byte in "%oot/turing/lang/Byte.tu"
    export fromByte
    
    fcn fromByte(byte: int1): ^Byte
        var resultByte: ^Byte
        new Byte, resultByte
        resultByte -> alloc(byte)
        result resultByte
    end fromByte
    
end Bytes