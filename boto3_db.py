import boto3

dynamodb = boto3.client("dynamodb")


def add_pokemon():
    dynamodb.put_item(
        TableName="pokemons_collection",
        Item={
            "pokemon_id": {"N": "25"},
            "pokemon_name": {"S": "Pikachu"},
            "pokemon_height": {"N": "12"},
            "pokemon_weight": {"N": "34"},
            "pokemon_types": {"L": [{"S": "Electric"}, {"S": "Fire"}]}
            }
        )


print(add_pokemon())
# dynamodb = boto3.resource('dynamodb')
# table = dynamodb.Table('pokemons_collection')

# table.put_item(Item={
#     'pokemon_id': 25,
#     'pokemon_name': 'Pikachu',
#     'pokemon_types': ['Electric']
# })
