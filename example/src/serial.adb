
with Ada.Text_Io;
with Ada.Command_Line;
with Wiring.Serial;

procedure Serial
is
    Fd : Wiring.Serial.File_Descriptor;
    Char : Character;
begin
    if Ada.Command_Line.Argument_Count = 2 then
        Fd := Wiring.Serial.Open(
            Ada.Command_Line.Argument(1),
            Wiring.Serial.Baud_Rate (Integer'Value(Ada.Command_Line.Argument(2))));
        loop
            Char := Wiring.Serial.Get_Char (Fd);
            case Character'Pos (Char)
                when 10 => Ada.Text_Io.New_Line (1); -- \n
                when 13 => null; -- \r
                when others => Ada.Text_Io.Put (Char);
            end case;
        end loop;
    else
        Ada.Text_Io.Put_Line ("Usage: ./serial <device> <baud rate>");
    end if;
end Serial;

