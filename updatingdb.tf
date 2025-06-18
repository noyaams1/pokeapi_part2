# def save_json(data, filename):
#     with open(filename, "w") as f:
#         json.dump(data, f, indent=4)


# save_json(db, DB_PATH)


# Connecting the app server to the database in aws dynamodb service

# Creating 'pokemons_collection' database on aws dynamodb
resource "aws_dynamodb_table" "pokemons_collection" {
  name         = "pokemons_collection"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "pokemon_name"

    attribute {
    name = "pokemon_name"
    type = "S"
    }

  attribute {
    name = "pokemon_id"
    type = "N"
  }

    # attribute {
    #     name = "height"
    #     type = "N"
    #     }
        
    # attribute {
    #     name = "weight"
    #     type = "N"
    # }

    # attribute {
    # name = "types"
    # type = "L"
    # }
    range_key = "pokemon_id"
  tags = {
    Name        = "pokemons_collection"
  }
}

