db.posts.insertOne({
    titulo: "Introdução ao NoSQL",
    autor: "Joao NoSQL",
    conteudo: "Os bancos de dados NoSQL são ótimos para dados não estruturados."
});

db.posts.insertOne({
    titulo: "Flexibilidade do MongoDB",
    autor: "Maria Flex",
    conteudo: "Não precisamos de um esquema fixo para esta coleção.",
    tags: ["nosql", "flexivel", "mongo"] 
});

db.posts.find();