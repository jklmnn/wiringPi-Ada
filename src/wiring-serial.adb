with System;

package body Wiring.Serial is

    function Open (Device : String; Speed : Baud_Rate) return File_Descriptor
    is
        function Serial_Open (Dev : System.Address; Baud : Baud_Rate) return File_Descriptor
            with
            Import,
            Convention => C,
            External_Name => "serialOpen";
        C_Device : String := Device & Character'Val (0);
    begin
        return Serial_Open (C_Device'Address, Speed);
    end Open;

    procedure Put_String (Fd : File_Descriptor; Str : String)
    is
        procedure Serial_Puts (Fd : File_Descriptor; S : System.Address)
            with Import,
            Convention => C,
            External_Name => "serialPuts";
        C_Str : String := Str & Character'Val (0);
    begin
        Serial_Puts (Fd, C_Str'Address);
    end Put_String;

end Wiring.Serial;
