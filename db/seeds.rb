# frozen_string_literal: true

# Mount families
seemyool = Race.create!(name: "SEEMYOOL")
dragoturkey = Race.create!(name: "DRAGOTURKEY")

# Mount generations
Generation.create([
  { name: "WILD_GOLDEN", level: 1, race: dragoturkey },
  { name: "WILD_GINGER", level: 1, race: dragoturkey },
  { name: "GOLDEN", level: 1, race: dragoturkey },
  { name: "ARMOURED", level: 1, race: dragoturkey },
  { name: "GINGER", level: 1, race: dragoturkey },
  { name: "FEATHERED", level: 1, race: dragoturkey },
  { name: "ALMOND", level: 1, race: dragoturkey },
  { name: "WILD_ALMOND", level: 2, race: dragoturkey },
  { name: "ALMOND_GOLDEN", level: 2, race: dragoturkey },
  { name: "ALMOND_GINGER", level: 2, race: dragoturkey },
  { name: "GOLDEN_GINGER", level: 2, race: dragoturkey },
  { name: "INDIGO", level: 3, race: dragoturkey },
  { name: "EBONY", level: 3, race: dragoturkey },
  { name: "INDIGO_GINGER", level: 4, race: dragoturkey },
  { name: "ALMOND_EBONY", level: 4, race: dragoturkey },
  { name: "GOLDEN_EBONY", level: 4, race: dragoturkey },
  { name: "EBONY_GINGER", level: 4, race: dragoturkey },
  { name: "ALMOND_INDIGO", level: 4, race: dragoturkey },
  { name: "GOLDEN_INDIGO", level: 4, race: dragoturkey },
  { name: "EBONY_INDIGO", level: 4, race: dragoturkey },
  { name: "CRIMSON", level: 5, race: dragoturkey },
  { name: "ORCHID", level: 5, race: dragoturkey },
  { name: "EBONY_CRIMSON", level: 6, race: dragoturkey },
  { name: "GOLDEN_ORCHID", level: 6, race: dragoturkey },
  { name: "GOLDEN_CRIMSON", level: 6, race: dragoturkey },
  { name: "ORCHID_GINGER", level: 6, race: dragoturkey },
  { name: "ALMOND_ORCHID", level: 6, race: dragoturkey },
  { name: "INDIGO_ORCHID", level: 6, race: dragoturkey },
  { name: "CRIMSON_GINGER", level: 6, race: dragoturkey },
  { name: "ALMOND_CRIMSON", level: 6, race: dragoturkey },
  { name: "INDIGO_CRIMSON", level: 6, race: dragoturkey },
  { name: "ORCHID_CRIMSON", level: 6, race: dragoturkey },
  { name: "EBONY_ORCHID", level: 6, race: dragoturkey },
  { name: "IVORY", level: 7, race: dragoturkey },
  { name: "TURQUOISE", level: 7, race: dragoturkey },
  { name: "EBONY_IVORY", level: 8, race: dragoturkey },
  { name: "GOLDEN_TURQUOISE", level: 8, race: dragoturkey },
  { name: "INDIGO_IVORY", level: 8, race: dragoturkey },
  { name: "INDIGO_TURQUOISE", level: 8, race: dragoturkey },
  { name: "TURQUOISE_ORCHID", level: 8, race: dragoturkey },
  { name: "IVORY_GINGER", level: 8, race: dragoturkey },
  { name: "IVORY_TURQUOISE", level: 8, race: dragoturkey },
  { name: "TURQUOISE_CRIMSON", level: 8, race: dragoturkey },
  { name: "IVORY_ORCHID", level: 8, race: dragoturkey },
  { name: "ALMOND_IVORY", level: 8, race: dragoturkey },
  { name: "IVORY_CRIMSON", level: 8, race: dragoturkey },
  { name: "GOLDEN_IVORY", level: 8, race: dragoturkey },
  { name: "TURQUOISE_GINGER", level: 8, race: dragoturkey },
  { name: "EBONY_TURQUOISE", level: 8, race: dragoturkey },
  { name: "ALMOND_TURQUOISE", level: 8, race: dragoturkey },
  { name: "PLUM", level: 9, race: dragoturkey },
  { name: "EMERALD", level: 9, race: dragoturkey },
  { name: "PLUM_TURQUOISE",  level: 10, race: dragoturkey },
  { name: "PLUM_GOLDEN",  level: 10, race: dragoturkey },
  { name: "EMERALD_INDIGO",  level: 10, race: dragoturkey },
  { name: "PLUM_EBONY",  level: 10, race: dragoturkey },
  { name: "PLUM_ORCHID",  level: 10, race: dragoturkey },
  { name: "EMERALD_IVORY",  level: 10, race: dragoturkey },
  { name: "PLUM_CRIMSON",  level: 10, race: dragoturkey },
  { name: "EMERALD_GINGER",  level: 10, race: dragoturkey },
  { name: "EMERALD_TURQUOISE",  level: 10, race: dragoturkey },
  { name: "PLUM_EMERALD",  level: 10, race: dragoturkey },
  { name: "ALMOND_EMERALD",  level: 10, race: dragoturkey },
  { name: "EMERALD_ORCHID",  level: 10, race: dragoturkey },
  { name: "GOLDEN_EMERALD",  level: 10, race: dragoturkey },
  { name: "EBONY_EMERALD",  level: 10, race: dragoturkey },
  { name: "PLUM_INDIGO",  level: 10, race: dragoturkey },
  { name: "PLUM_IVORY",  level: 10, race: dragoturkey },
  { name: "EMERALD_CRIMSON",  level: 10, race: dragoturkey },
  { name: "PLUM_ALMOND",  level: 10, race: dragoturkey },
  { name: "PLUM_GINGER",  level: 10, race: dragoturkey },
  { name: "WILD_GOLDEN", level: 1, race: seemyool },
  { name: "WILD_INDIGO", level: 1, race: seemyool },
  { name: "WILD_EBONY", level: 1, race: seemyool },
  { name: "WILD_CRIMSON", level: 1, race: seemyool },
  { name: "WILD_ORCHID", level: 1, race: seemyool },
  { name: "GOLDEN", level: 1, race: seemyool },
  { name: "INDIGO", level: 1, race: seemyool },
  { name: "EBONY", level: 1, race: seemyool },
  { name: "CRIMSON", level: 1, race: seemyool },
  { name: "ORCHID", level: 1, race: seemyool },
  { name: "GOLDEN_INDIGO", level: 2, race: seemyool },
  { name: "GOLDEN_EBONY", level: 2, race: seemyool },
  { name: "INDIGO_EBONY", level: 2, race: seemyool },
  { name: "GOLDEN_CRIMSON", level: 2, race: seemyool },
  { name: "GOLDEN_ORCHID", level: 2, race: seemyool },
  { name: "INDIGO_CRIMSON", level: 2, race: seemyool },
  { name: "INDIGO_ORCHID", level: 2, race: seemyool },
  { name: "EBONY_CRIMSON", level: 2, race: seemyool },
  { name: "EBONY_ORCHID", level: 2, race: seemyool },
  { name: "CRIMSON_ORCHID", level: 2, race: seemyool },
  { name: "GINGER", level: 3, race: seemyool },
  { name: "ALMOND", level: 3, race: seemyool },
  { name: "GINGER_ALMOND", level: 4, race: seemyool },
  { name: "GINGER_GOLDEN", level: 4, race: seemyool },
  { name: "ALMOND_GOLDEN", level: 4, race: seemyool },
  { name: "ALMOND_INDIGO", level: 4, race: seemyool },
  { name: "ALMOND_EBONY", level: 4, race: seemyool },
  { name: "CRIMSON_GINGER", level: 4, race: seemyool },
  { name: "ORCHID_GINGER", level: 4, race: seemyool },
  { name: "INDIGO_GINGER", level: 4, race: seemyool },
  { name: "EBONY_GINGER", level: 4, race: seemyool },
  { name: "ALMOND_CRIMSON", level: 4, race: seemyool },
  { name: "ALMOND_ORCHID", level: 4, race: seemyool },
  { name: "IVORY", level: 5, race: seemyool },
  { name: "TURQUOISE", level: 5, race: seemyool },
  { name: "IVORY_GINGER", level: 6, race: seemyool },
  { name: "TURQUOISE_GINGER", level: 6, race: seemyool },
  { name: "ALMOND_IVORY", level: 6, race: seemyool },
  { name: "ALMOND_TURQUOISE", level: 6, race: seemyool },
  { name: "GOLDEN_IVORY", level: 6, race: seemyool },
  { name: "GOLDEN_TURQUOISE", level: 6, race: seemyool },
  { name: "INDIGO_IVORY", level: 6, race: seemyool },
  { name: "INDIGO_TURQUOISE", level: 6, race: seemyool },
  { name: "EBONY_IVORY", level: 6, race: seemyool },
  { name: "EBONY_TURQUOISE", level: 6, race: seemyool },
  { name: "CRIMSON_IVORY", level: 6, race: seemyool },
  { name: "TURQUOISE_CRIMSON", level: 6, race: seemyool },
  { name: "IVORY_ORCHID", level: 6, race: seemyool },
  { name: "TURQUOISE_ORCHID", level: 6, race: seemyool },
  { name: "IVORY_TURQUOISE", level: 6, race: seemyool },
  { name: "EMERALD", level: 7, race: seemyool },
  { name: "PLUM", level: 7, race: seemyool },
  { name: "GINGER_EMERALD", level: 8, race: seemyool },
  { name: "GINGER_PLUM", level: 8, race: seemyool },
  { name: "ALMOND_EMERALD", level: 8, race: seemyool },
  { name: "ALMOND_PLUM", level: 8, race: seemyool },
  { name: "GOLDEN_EMERALD", level: 8, race: seemyool },
  { name: "GOLDEN_PLUM", level: 8, race: seemyool },
  { name: "INDIGO_EMERALD", level: 8, race: seemyool },
  { name: "INDIGO_PLUM", level: 8, race: seemyool },
  { name: "EBONY_EMERALD", level: 8, race: seemyool },
  { name: "EBONY_PLUM", level: 8, race: seemyool },
  { name: "CRIMSON_EMERALD", level: 8, race: seemyool },
  { name: "CRIMSON_PLUM", level: 8, race: seemyool },
  { name: "EMERALD_ORCHID", level: 8, race: seemyool },
  { name: "ORCHID_PLUM", level: 8, race: seemyool },
  { name: "IVORY_EMERALD", level: 8, race: seemyool },
  { name: "IVORY_PLUM", level: 8, race: seemyool },
  { name: "TURQUOISE_EMERALD", level: 8, race: seemyool },
  { name: "TURQUOISE_PLUM", level: 8, race: seemyool },
  { name: "EMERALD_PLUM", level: 8, race: seemyool },
])

generation = Generation.first

mother = Breeding::Mount::Create.run!(name: "Mother", sexe: "FEMALE", generation_id: generation.id)
father = Breeding::Mount::Create.run!(name: "Father", sexe: "MALE", generation_id: generation.id)
Family::Child::Create.run!(name: "Child 1", sexe: "MALE", generation_id: generation.id, father_id: father.id, mother_id: mother.id)
