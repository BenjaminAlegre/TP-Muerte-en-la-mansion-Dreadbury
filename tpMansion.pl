% TP Muerte en la mansión Dreadbury

%viveEnLaMansion(Persona)
viveEnLaMansion(tiaAgatha).
viveEnLaMansion(charles).
viveEnLaMansion(mayordomo).

%odia(Persona, otraPersona)
odia(tiaAgatha, OtraPersona):-
    viveEnLaMansion(OtraPersona),
    OtraPersona\=mayordomo.

odia(charles, OtraPersona):-
    viveEnLaMansion(OtraPersona),
    not(odia(tiaAgatha, OtraPersona)).

odia(mayordomo, OtraPersona):-
    odia(tiaAgatha, OtraPersona).

esMasRico(UnaPersona, tiaAgatha):-
    viveEnLaMansion(UnaPersona),
    not(odia(mayordomo, UnaPersona)).

% 1)a. 
mata(Asesino, Victima):-
    viveEnLaMansion(Asesino),
    odia(Asesino, Victima),
    not(esMasRico(Asesino, Victima)).

% 1)b. ¿Quien mato a la tia Agatha? 

% ?- mata(Asesino, tiaAgatha).
%  Asesino = tiaAgatha .   

% 2)b.

% ¿Existe alguien que odie a Milhouse? No

% ?- odia(UnaPersona, milhouse).
% false.

% ¿A quien odia charles?  A el mayordomo

% ?- odia(charles, OtraPersona).
% OtraPersona = mayordomo.

% El nombre de quien odia a tia Agatha: tiaAgatha y el mayordomo.

%  ?- odia(UnaPersona, tiaAgatha).
%  UnaPersona = tiaAgatha ;
%  UnaPersona = mayordomo.

% Todos los odiadores y sus odiados:

%  ?-odia(tiaAgatha, OtraPersona).
%  OtraPersona = tiaAgatha ;
%  OtraPersona = charles .

%  ?- odia(charles, OtraPersona).
OtraPersona = mayordomo.
%

% 4 ?- odia(mayordomo, Persona).
% Persona = agatha .

