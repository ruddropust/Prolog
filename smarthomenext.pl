% Rules1
adjust_temperature(Current, Desired, yes, _) :-
    (
        Current > Desired -> activate_cooling;
        Current < Desired -> activate_heating;
        writeln('Temperature is already optimal.')
    ).

% Rule 2:
adjust_temperature(_, _, no, night) :-
    writeln('Saving energy: Reduce heating or cooling.').

% Rule 3:
adjust_temperature(Current, _, yes, _) :-
    (
        Current < 18 -> activate_heating;
        Current > 24 -> activate_cooling;
        writeln('Temperature is within the comfort range.')
    ).

% Action Rules
activate_heating :-
    writeln('Heating system activated.').

activate_cooling :-
    writeln('Cooling system activated.').

% Main predicate to take user input
start :-
    writeln('Enter the current temperature:'),
    read(Current),
    writeln('Enter the desired temperature:'),
    read(Desired),
    writeln('Is the home occupied? (yes/no):'),
    read(Occupied),
    writeln('Enter the time of day (morning/afternoon/evening/night):'),
    read(TimeOfDay),
    adjust_temperature(Current, Desired, Occupied, TimeOfDay).

% Example Query:
% ?- start.
