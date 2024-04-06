import json

#specify the path to your JSON configuration file
config_file_path = 'config/config.json'

#Load the JSON configuration file
with open(config_file_path,'r') as config_file:
    config=json.load(config_file)

#Print the configuration
Connection_String = config["connectionString"]

print(Connection_String)