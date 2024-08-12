(*Števec šteje, kolikokrat do sedaj se je pojavila zaustavitvena kombinacija. Ko je trenutno_stevilo = tevilo_pojavitev_za_ustavitev, 
se avtomat ustavi *)


type stevec = {trenutno_stevilo : int ; zaustavitvena_kombinacija : int * int * int ; 
               stevilo_pojavitev_za_ustavitev : int}

(*Število v števcu posodobimo.*)
let update stevec' = {stevec' with trenutno_stevilo = stevec'.trenutno_stevilo + 1}