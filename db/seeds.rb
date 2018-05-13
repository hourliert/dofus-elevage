# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

families = Family.create([
                           { name: "Dragodinde" },
                           { name: "Muldo" }
                         ])

generations = Generation.create([
                                  { name: "Dore", family_id: families[0].id },
                                  { name: "Indigo", family_id: families[1].id }
                                ])

mounts = Mount.create([
                        { name: "Impure0", sexe: 0, generation_id: generations[0].id },
                        { name: "Impure1", sexe: 1, generation_id: generations[1].id },
                        { name: "Impure2", sexe: 1, generation_id: generations[1].id },
                        { name: "Impure3", sexe: 1, generation_id: generations[0].id }
                      ])

Relation.create([
                  { mount_id: mounts[1].id, parent_id: mounts[0].id, child_id: mounts[2].id }
                ])
