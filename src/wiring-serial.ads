package Wiring.Serial is

    type File_Descriptor is new Integer;

    type Baud_Rate is new Integer;

    function Open(Device : String; Speed : Baud_Rate) return File_Descriptor;

    procedure Close (Fd : File_Descriptor)
        with
        Import,
        Convention => C,
        External_Name => "serialClose";

    procedure Put_Char (Fd : File_Descriptor; Char : Character)
        with
        Import,
        Convention => C,
        External_Name => "serialPutchar";

    procedure Put_String (Fd : File_Descriptor; Str : String);

    function Data_Available (Fd : File_Descriptor) return Integer
        with
        Import,
        Convention => C,
        External_Name => "serialDataAvail";

    function Get_Char (Fd : File_Descriptor) return Character
        with
        Import,
        Convention => C,
        External_Name => "serialGetchar";

    procedure Flush (Fd : File_Descriptor)
        with
        Import,
        Convention => C,
        External_Name => "serialFlush";

end Wiring.Serial;
