type t

val trenutni_znak : t -> int option

val je_na_robu_traku : t -> bool

val premik_na_levo : t -> t

val premik_na_desno : t -> t

val  zapisi_na_trak : t -> t