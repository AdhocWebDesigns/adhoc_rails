json.extract! profile, :id, :user_id, :class_id, :background, :dci, :exp, :alignment_id, :race_id, :char_name, :inspire, :prof_bonus, :ac, :init, :speed, :hp, :temp_hp, :hit_die, :deathsave_s, :deathsave_f, :skills_id, :stats_id, :personality, :ideals, :bonds, :flaws, :faction_id, :spells_id, :attacks_id, :inventory_id, :profs, :langs_id, :features, :traits, :age, :height, :weight, :eyes, :skin, :hair, :backstory, :total_ncm, :treasure_id, :pass_wisdom, :created_at, :updated_at
json.url profile_url(profile, format: :json)