db = db.getSiblingDB("open5gs");

db.createUser({
  user: "admin",
  pwd: "admin",
  roles: [
    { role: "dbOwner", db: "open5gs" }
  ]
});

// Cria uma coleção inicial para garantir que o banco exista
db.createCollection("init_collection");
db.init_collection.insertOne({ createdAt: new Date() });