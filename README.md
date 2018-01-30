# Simple key-value storage
Simple key-value storage with HTTP REST interface.

### Requirements
  * curl
  * docker
  * docker-compose

### Setup & Run
    docker-compose up

### API

#### Create/Update value for specified key
    curl -XPUT http://localhost:8000/entries/some_key/some_value

    {"status":"success","data":{"some_key":"some_value"}}

#### Get value for specified key
    curl -XGET http://localhost:8000/entries/some_key

    {"status":"success","data":{"some_key":"some_value"}}

#### Get all key-values
    curl -XGET http://localhost:8000/entries

    {"status":"success","data":{"some_key":"some_value"}}

#### Delete key
    curl -XDELETE http://localhost:8000/entries/some_key

    {"status":"success","data":{"some_key":"some_value"}}
    
    curl -XGET http://localhost:8000/entries

    {"status":"success","data":{}}
