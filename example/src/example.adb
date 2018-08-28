
with Ada.Text_Io;
with WiringPi;

procedure Example
is
    Status : Integer := WiringPi.Setup;
begin
    for I in Integer range 0 .. 16 loop
        Ada.Text_Io.Put_Line ("Pin " & Integer'Image (I) &
                              ": " & Integer'Image (WiringPi.Value_Type'Pos (WiringPi.Digital_Read (I))));
    end loop;
end Example;
