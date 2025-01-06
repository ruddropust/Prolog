
% Rules
% Rule 1: Adjust to the desired temperature if the home is occupied.
adjust_temperature(Current, Desired, yes) :-
    (
        Current > Desired -> activate_cooling;
        Current < Desired -> activate_heating;
        writeln('Temperature is already optimal.')
    ).

% Rule 2: Save energy if the home is not occupied and it’s night.
adjust_temperature(_, _, no) :-
    time_of_day(night),
    writeln('Saving energy: Reduce heating or cooling.').

% Rule 3: Activate heating or cooling if the temperature is outside the comfort range.
adjust_temperature(Current, _, yes) :-
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
    writeln('Is the home occupied? (yes/no):'),
    read(Occupied),
    writeln('Enter the current temperature:'),
    read(Current),
    writeln('Enter the desired temperature:'),
    read(Desired),
        adjust_temperature(Current, Desired, Occupied).

% Example Query:
% ?- start.
