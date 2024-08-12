(*Avtomat bo vseboval tri trakove. Vsak bo definiran na enak način z arrayem lihe dolžine (da bo na obeh straneh glave na začetku enaka količina traku), 
katerega dolžina je >= 9 -uporabnik poljubno definira dolžino traku, ki jo želi uporabljati. 
Nato za sredinskih devet mest izbere vrednosti 0 ali 1.
Ostala mesta na traku so nepopisana. Zato za predstavitev traku uporabimo int option array. Če je mesto nepopisano, ga označimo z None.
Sicer z Some 0 oziroma Some 1.*)

type t = {trak : int option array; indeks_trenutnega_znaka : int}

let trenutni_znak trak' = (trak'.trak).(trak'.indeks_trenutnega_znaka)

let je_na_robu_traku trak' = (trak'.indeks_trenutnega_znaka = 0) || (trak'.indeks_trenutnega_znaka = Array.length (trak'.trak) - 1)

let premik_na_levo trak' = { trak' with indeks_trenutnega_znaka = succ trak'.indeks_trenutnega_znaka }

let premik_na_desno trak' = { trak' with indeks_trenutnega_znaka = trak'.indeks_trenutnega_znaka  - 1}

let aux_zapisi x i a = a.(i) <- x; a

let zapisi_na_trak x i trak' (*Zapiše x na i-to mesto traku*) = {trak' with trak  = aux_zapisi x i (trak'.trak)}
