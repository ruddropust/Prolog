% Facts: Define diseases
disease(cold).
disease(flu).
disease(covid_19).

% Facts: Define symptoms for each disease
symptom(cold, cough).
symptom(cold, sore_throat).
symptom(cold, no_fever).

symptom(flu, fever).
symptom(flu, cough).
symptom(flu, body_aches).
symptom(flu, fatigue).

symptom(covid_19, fever).
symptom(covid_19, cough).
symptom(covid_19, fatigue).
symptom(covid_19, shortness_of_breath).

% Rule: Check if a disease matches all given symptoms
has_disease(Disease) :-
    disease(Disease),
    match_symptoms(Disease).

% Helper rule: Match all symptoms of a disease
match_symptoms(Disease) :-
    symptom(Disease, Symptom),
    symptom_present(Symptom),
    fail. % Force backtracking to check all symptoms
match_symptoms(_). % Succeed when all symptoms have been checked

% User input: Record symptoms as facts
ask_symptoms :-
    writeln('Do you have fever? (yes/no)'),
    read(Fever),
    (Fever == yes -> assert(symptom_present(fever)); true),

    writeln('Do you have cough? (yes/no)'),
    read(Cough),
    (Cough == yes -> assert(symptom_present(cough)); true),

    writeln('Do you have sore throat? (yes/no)'),
    read(SoreThroat),
    (SoreThroat == yes -> assert(symptom_present(sore_throat)); true),

    writeln('Do you have fatigue? (yes/no)'),
    read(Fatigue),
    (Fatigue == yes -> assert(symptom_present(fatigue)); true),

    writeln('Do you have shortness of breath? (yes/no)'),
    read(ShortnessOfBreath),
    (ShortnessOfBreath == yes -> assert(symptom_present(shortness_of_breath)); true),

    writeln('Do you have body aches? (yes/no)'),
    read(BodyAches),
    (BodyAches == yes -> assert(symptom_present(body_aches)); true).

% Main predicate to start diagnosis
diagnose :-
    retractall(symptom_present(_)), % Clear previous symptoms
    ask_symptoms,
    (
        has_disease(Disease) ->
        format('You might have ~w.', [Disease]);
        writeln('No matching disease found. Consult a doctor.')
    ).

% Example Query:
% ?- diagnose.
