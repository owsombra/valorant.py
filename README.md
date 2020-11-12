# valorant.py

A synchronous client package for interacting with Riot Games' Valorant API endpoints. This is currently under a lot of construction, more stuff coming soon!

### Installation

**pip**: `pip install valorant`

**poetry**: `python3 -m poetry add valorant`

### Usage

Quickstart Guide:
```python
import os
import valorant

API_KEY = os.getenv("API_KEY")
client = valorant.Client(API_KEY)

agents = client.get_characters()

for agent in agents.all:
	print(agent['name'])
```
