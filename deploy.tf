
# Connecting the app server to the 'pokemons_collection' database 

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



    range_key = "pokemon_id"
  tags = {
    Name        = "pokemons_collection"
  }
}

