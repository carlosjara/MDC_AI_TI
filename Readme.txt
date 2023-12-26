URls:
Planner
https://docs.google.com/document/d/1jOW7D5d6JoE9tO5vW-CKLhSHq3mHAxOkbsJxFBqEWeo/edit

Drive:
https://drive.google.com/drive/folders/1jLgAPovJtbuZeD5KEYYi9nnODt1yRo4f

Configuracion BD NOSQL
mongodb://localhost:27017

BD Curso
mongodb+srv://infrati:infrati@cluster0.v5rih5b.mongodb.net/

establecer conexion
mongosh "mongodb+srv://cluster0.v5rih5b.mongodb.net/infrati" --apiVersion 1 --username infrati

Consultas 

use infrati
db.users.find({nombre:"Carlos"});

db.users.find({nombre:"Carlos"},{apellido:1,_id:0});

{nombre:{$ne:"Maria"}}

db.users.find({nombre:{$ne:"Maria"}},{apellido:1});

{$or:[{nombre:"Carlos"},{nombre:"Andrea"}]}

db.users.find({nombre:/arlos/},{apellido:1,nombre:1});

db.users.find({nombre:/arlos/,edad:{$gt:34}},{apellido:1,nombre:1});

db.users.find({nombre:/arlos/},{apellido:1,nombre:1}).sort({"nombre":-1, "apellido":1});

db.users.find({estado:{$ne:null}});

db.users.find({$or:[{nombre:"Carlos"},{apellido:"Ordoñez"}]});


/*SELECT * FROM TABLE users WHERE nombre LIKE ‘C%’*/
db.users.find({nombre: /^C/});

/*SELECT * FROM TABLE users WHERE apellido LIKE ‘%o’*/
db.users.find({nombre: /o$/});
db.users.find({apellido: /o$/},{apellido:1,_id:0})

/*SELECT * FROM TABLE users WHERE edad BETWEEN 20 AND 38;*/
db.users.find({edad: {$gte:20,$lte:38}});

/*SELECT * FROM TABLE users WHERE edad>=20 AND edad <38;*/
db.users.find({edad: {$gte:20,$lt:38}});


db.users.distinct("genero");
// Lo entrega como una lista


