
with Ada.Text_Io;
with Wiring.Pi;

procedure Gpio
is
    Status : Integer := Wiring.Pi.Setup;
begin
    for I in Integer range 0 .. 16 loop
        Ada.Text_Io.Put_Line ("Pin " & Integer'Image (I) &
                              ": " & Integer'Image (Wiring.Pi.Value_Type'Pos (Wiring.Pi.Digital_Read (I))));
    end loop;
end Gpio;
