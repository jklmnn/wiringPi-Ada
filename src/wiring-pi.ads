
package Wiring.Pi is

    subtype Pin_Type is Integer;

    type Mode_Type is (
        Input,
        Output
        );

    for Mode_Type use (
        Input => 0,
        Output => 1
        );

    type Value_Type is (
        Low,
        High
        );

    for Value_Type use (
        Low => 0,
        High => 1
        );

    function Setup return Integer
        with
        Import,
        Convention => C,
        External_Name => "wiringPiSetup";

    function Setup_Gpio return Integer
        with
        Import,
        Convention => C,
        External_Name => "wiringPiSetupGpio";

    function Setup_Phys return Integer
        with
        Import,
        Convention => C,
        External_Name => "wiringPiSetupPhys";

    procedure Pin_Mode (Pin : Pin_type; Mode : Mode_Type)
        with
        Import,
        Convention => C,
        External_Name => "pinMode";

    procedure Digital_Write (Pin : Pin_Type; Value : Value_Type)
        with
        import,
        Convention => C,
        External_Name => "digitalWrite";

    function Digital_Read (Pin : Pin_Type) return Value_Type
        with
        Import,
        Convention => C,
        External_Name => "digitalRead";

end Wiring.Pi;
