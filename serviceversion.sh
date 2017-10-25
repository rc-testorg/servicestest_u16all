#!/bin/bash -e

cassandra_version='cassandra -v'
export CASSANDRA_VERSION=$(eval "$cassandra_version")
echo CASSANDRA_VERSION=$CASSANDRA_VERSION

if [[ "$CASSANDRA_VERSION" == "3.11.0" ]]; then
  echo "Cassandra version is running with latest version i.e, $CASSANDRA_VERSION"
else
  echo "ERROR: Failed, Cassandra version dint match to the latest version instead it is $CASSANDRA_VERSION"
  exit 1
fi;

memcached_version='memcached -V'
export MEMCACHED_VERSION=$(eval "$cassandra_version")
echo MEMCACHED_VERSION=$MEMCACHED_VERSION

if [[ "$MEMCACHED_VERSION" == "memcached 1.5.2" ]]; then
  echo "Memcache version is running with latest version i.e, $MEMCACHED_VERSION"
else
  echo "ERROR: Failed, Memcache version dint match to the latest version instead it is $MEMCACHED_VERSION"
  exit 1
fi;

postgres_version='psql --version'
export POSTGRES_VERSION=$(eval "$postgres_version")
echo POSTGRES_VERSION=$POSTGRES_VERSION

if [[ "$POSTGRES_VERSION" == "psql (PostgreSQL) 9.6.5" ]]; then
  echo "Postgres version is running with latest version i.e, $POSTGRES_VERSION"
else
  echo "ERROR: Failed, Postgres version dint match to the latest version instead it is $POSTGRES_VERSION"
  exit 1
fi;

redis_version='redis-server -v'
export REDIS_VERSION=$(eval "$redis_version")
echo REDIS_VERSION=$REDIS_VERSION

if [[ "$REDIS_VERSION" == "Redis server v=4.0.2 sha=00000000:0 malloc=jemalloc-4.0.3 bits=64 build=86450d2ba8219c1e" ]]; then
  echo "Redis version is running with latest version i.e, $REDIS_VERSION"
else
  echo "ERROR: Failed, Redis version dint match to the latest version instead it is $REDIS_VERSION"
  exit 1
fi;

riak_version='riak version'
export RIAK_VERSION=$(eval "$riak_version")
echo RIAK_VERSION=$RIAK_VERSION

if [[ "$RIAK_VERSION" == "2.2.3" ]]; then
  echo "RIAK version is running with latest version i.e, $RIAK_VERSION"
else
  echo "ERROR: Failed, Riak version dint match to the latest version instead it is $RIAK_VERSION"
  exit 1
fi;

#export NODE_VERSION=$SHIPPABLE_NODE_VERSION
#echo NODE_VERSION=$NODE_VERSION

echo 'EOF'
