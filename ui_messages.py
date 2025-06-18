# --- Show drawing options to the user---
def print_menu():
    print("\nHow would you like to draw your Pokémon? ")
    print("1. Random")
    print("2. By ID")
    print("3. By Name")
    print("4. Exit")


# --- Printing Pokémon info (ui) ---
def print_pokemon(pokemon):
    pokemon_name = pokemon["name"].title()
    pokemon_id = pokemon["id"]
    pokemon_height = pokemon["height"]
    pokemon_weight = pokemon["weight"]
    pokemon_types = pokemon["types"]
    print("\n🎯 Pokémon Drawn:")
    print(f"Name   : {pokemon_name}")
    print(f"ID     : {pokemon_id}")
    print(f"Height : {pokemon_height}")
    print(f"Weight : {pokemon_weight}")
    print(f"Types  : {', '.join(pokemon_types)}\n")
