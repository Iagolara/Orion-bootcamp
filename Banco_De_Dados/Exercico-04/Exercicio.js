db.posts.updateOne(
  { titulo: "Tendências de Front-end em 2025: o que vem por aí" },
  {
    $set: {
      comentarios: [
        {
          autor: "Karol Salvador",
          data: new Date(),
          texto:
            "Ótimo artigo! Abordar o uso da IA é um assunto latente e atual.",
          likes: 3,
        },
        {
          autor: "Karla Katarina",
          data: new Date(),
          texto: "Concordo, muito útil!",
          likes: 1,
        },
      ],
    },
  }
);

print("\n--- Verificação do UPDATE (Post com comentários) ---\n");
db.posts.find({ titulo: "Tendências de Front-end em 2025: o que vem por aí" }).pretty();


print("\n--- Consulta 1: Posts com a tag 'tendências' ---\n");
db.posts.find({ tags: "tendências" }).pretty();

print("\n--- Consulta 2: Posts da autora 'Carolina Gangorra' ---\n");
db.posts.find({ autor: "Carolina Gangorra" }).pretty();